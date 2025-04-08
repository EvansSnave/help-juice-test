User.create!([
  {
    ip_address: "11111:900"
  },
  {
    ip_address: "11111:90111"
  },
  {
    ip_address: "11111:90222"
  },
])

Search.create!([
  {
    search_id: "1",
    search_content: "Hello there"
  },
  {
    search_id: "1",
    search_content: "Hello there333"
  },
  {
    search_id: "1",
    search_content: "AWWW"
  },
  {
    search_id: "2",
    search_content: "Hi"
  },
])

Article.create!([
  {
    title: "First article",
    content: "This is the first article"
  },
  {
    title: "Second article",
    content: "This is the second article"
  },
  {
    title: "Third article",
    content: "This is the third article"
  },
  {
    title: "Fourth article",
    content: "This is the fourth article"
  },
  {
    title: "Fifth article",
    content: "This is the fifth article"
  },
])
