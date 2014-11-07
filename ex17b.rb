from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

in_file = open(from_file)
indata = in_file.read

puts "The input file is #{indata.length} bytes long"

File.exist?(to_file)

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close

#   close() returns zero on success.  On error, -1 is returned, and errno is set appropriately.
#    Not checking the return value of close() is a common but nevertheless
#        serious programming error.  It is quite possible that errors on a
#        previous write(2) operation are first reported at the final close().
#        Not checking the return value when closing the file may lead to
#        silent loss of data.  This can especially be observed with NFS and
#        with disk quota.  Note that the return value should only be used for
#        diagnostics.  In particular close() should not be retried after an
#        EINTR since this may cause a reused descriptor from another thread to
#        be closed.
# 
#        A successful close does not guarantee that the data has been
#        successfully saved to disk, as the kernel defers writes.  It is not
#        common for a filesystem to flush the buffers when the stream is
#        closed.  If you need to be sure that the data is physically stored,
#        use fsync(2).  (It will depend on the disk hardware at this point.)