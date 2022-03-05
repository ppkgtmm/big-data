import os
import argparse  # for parsing commandline arguments
import gdown  # for downloading file from google drive

parser = argparse.ArgumentParser(description="data file downloader from google drive")
parser.add_argument("file_id", metavar="file_id", type=str, help="google drive file id")
parser.add_argument(
    "destination",
    metavar="destination",
    type=str,
    help="destination to save downloaded file",
)

args = parser.parse_args()

# help generate google drive url from file id
def get_gdrive_url(file_id):
    template_url = "https://drive.google.com/uc?id="
    return f"{template_url}{file_id}"


# ensure that destination directory exist
destination_folder = os.path.dirname(args.destination)
if not os.path.exists(destination_folder):
    raise Exception("destination folder does not exist")

gdown.download(
    get_gdrive_url(args.file_id), args.destination, quiet=False
)  # download file
