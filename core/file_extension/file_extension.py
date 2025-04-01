from talon import Context, Module

from ..user_settings import track_csv_list

mod = Module()
mod.list("file_extension", desc="A file extension, such as .py")

_file_extensions_defaults = {
    "peridot pie": ".py",
    "peridot elixir": ".ex",
    "peridot talon": ".talon",
    "peridot mark down": ".md",
    "peridot shell": ".sh",
    "peridot vim": ".vim",
    "peridot see": ".c",
    "peridot see sharp": ".cs",
    "peridot com": ".com",
    "peridot net": ".net",
    "peridot org": ".org",
    "peridot us": ".us",
    "peridot U S": ".us",
    "peridot co dot UK": ".co.uk",
    "peridot exe": ".exe",
    "peridot bin": ".bin",
    "peridot bend": ".bin",
    "peridot jason": ".json",
    "peridot jay son": ".json",
    "peridot J S": ".js",
    "peridot java script": ".js",
    #"peridot TS": ".ts",
    "peridot type script": ".ts",
    #"peridot csv": ".csv",
    #"totssv": ".csv",
    #"tot csv": ".csv",
    "peridot cassie": ".csv",
    "peridot text": ".txt",
    "peridot julia": ".jl",
    "peridot J L": ".jl",
    "peridot html": ".html",
    "peridot css": ".css",
    "peridot sass": ".sass",
    "peridot svg": ".svg",
    "peridot png": ".png",
    "peridot wave": ".wav",
    "peridot flack": ".flac",
    "peridot doc": ".doc",
    "peridot doc x": ".docx",
    "peridot pdf": ".pdf",
    "peridot tar": ".tar",
    "peridot g z": ".gz",
    "peridot g zip": ".gzip",
    "peridot zip": ".zip",
    "peridot toml": ".toml",
    "peridot java": ".java",
    "peridot class": ".class",
    "peridot log": ".log",
}

ctx = Context()


@track_csv_list(
    "file_extensions.csv",
    headers=("File extension", "Name"),
    default=_file_extensions_defaults,
)
def on_update(values):
    ctx.lists["self.file_extension"] = values
