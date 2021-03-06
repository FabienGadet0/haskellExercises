{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_rna_transcription (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [1,0,1,4] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/fabien/exercism/haskell/rna-transcription/.stack-work/install/x86_64-linux/lts-9.11/8.0.2/bin"
libdir     = "/home/fabien/exercism/haskell/rna-transcription/.stack-work/install/x86_64-linux/lts-9.11/8.0.2/lib/x86_64-linux-ghc-8.0.2/rna-transcription-1.0.1.4-mBDcn2bbpXJQlsTcF9Nto"
dynlibdir  = "/home/fabien/exercism/haskell/rna-transcription/.stack-work/install/x86_64-linux/lts-9.11/8.0.2/lib/x86_64-linux-ghc-8.0.2"
datadir    = "/home/fabien/exercism/haskell/rna-transcription/.stack-work/install/x86_64-linux/lts-9.11/8.0.2/share/x86_64-linux-ghc-8.0.2/rna-transcription-1.0.1.4"
libexecdir = "/home/fabien/exercism/haskell/rna-transcription/.stack-work/install/x86_64-linux/lts-9.11/8.0.2/libexec"
sysconfdir = "/home/fabien/exercism/haskell/rna-transcription/.stack-work/install/x86_64-linux/lts-9.11/8.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "rna_transcription_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "rna_transcription_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "rna_transcription_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "rna_transcription_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "rna_transcription_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "rna_transcription_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
