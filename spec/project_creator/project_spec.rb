describe Hash do
  it 'create a project' do
    { 'test 1': {
      'folder 1': {
        'file 1': 'file 1'
      },
      'folder 2': {
        'file 3': 'file 3'
      },
      'file 2': 'file 2'
    } }.create_project

    expect(File.exist?('./test 1')).to eq true
    expect(File.exist?('./test 1/folder 1')).to eq true
    expect(File.exist?('./test 1/folder 1/file 1')).to eq true
    expect(File.exist?('./test 1/folder 2')).to eq true
    expect(File.exist?('./test 1/folder 2/file 3')).to eq true
    expect(File.exist?('./test 1/file 2')).to eq true

    expect(File.read('./test 1/folder 1/file 1')).to eq 'file 1'
    expect(File.read('./test 1/file 2')).to eq 'file 2'

    FileUtils.rm_r './test 1/'
  end
end
