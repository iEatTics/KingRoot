.class public Lcom/kingroot/kinguser/btw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bNR:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/btv;",
            ">;"
        }
    .end annotation
.end field

.field bNS:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/btp;",
            ">;"
        }
    .end annotation
.end field

.field bNT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bNU:Lcom/kingroot/kinguser/bts;

.field bNV:J

.field bNW:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/btw;->bNR:Ljava/util/LinkedHashMap;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/btw;->bNS:Ljava/util/LinkedHashMap;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/btw;->bNT:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Lcom/kingroot/kinguser/bts;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bts;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/btw;->bNU:Lcom/kingroot/kinguser/bts;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/btw;->bNV:J

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/btw;->bNW:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private aib()V
    .locals 6

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 90
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/kingroot/kinguser/btw;->bNW:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/btw;->bNU:Lcom/kingroot/kinguser/bts;

    iget v0, v0, Lcom/kingroot/kinguser/bts;->bNL:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/DataInputStream;->skip(J)J

    .line 93
    const/4 v0, 0x0

    .line 94
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 125
    :cond_1
    :goto_1
    return-void

    .line 95
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 96
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 98
    :sswitch_0
    new-instance v2, Lcom/kingroot/kinguser/btp;

    invoke-direct {v2}, Lcom/kingroot/kinguser/btp;-><init>()V

    .line 99
    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/btp;->a(Ljava/io/DataInputStream;)V

    .line 101
    new-instance v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/kingroot/kinguser/btp;->bNB:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 102
    const-string v4, "META-INF/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    iget-object v4, p0, Lcom/kingroot/kinguser/btw;->bNT:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3
    iget-object v4, p0, Lcom/kingroot/kinguser/btw;->bNS:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    goto :goto_1

    .line 110
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 120
    :goto_3
    if-eqz v1, :cond_4

    .line 121
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 123
    :cond_4
    throw v0

    .line 119
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 116
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x504b0102 -> :sswitch_0
        0x504b0506 -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Ljava/io/RandomAccessFile;)V
    .locals 10

    .prologue
    const-wide/16 v0, 0x400

    const/4 v3, 0x0

    .line 60
    iget-wide v4, p0, Lcom/kingroot/kinguser/btw;->bNV:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/btw;->bNV:J

    .line 61
    :cond_0
    const/16 v2, 0x400

    new-array v4, v2, [B

    .line 63
    :try_start_0
    iget-wide v6, p0, Lcom/kingroot/kinguser/btw;->bNV:J

    sub-long/2addr v6, v0

    long-to-int v2, v6

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 64
    const/4 v2, 0x0

    long-to-int v5, v0

    invoke-virtual {p1, v4, v2, v5}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    int-to-long v6, v3

    const-wide/16 v8, 0x4

    sub-long v8, v0, v8

    cmp-long v2, v6, v8

    if-ltz v2, :cond_1

    .line 84
    return-void

    .line 68
    :catch_0
    move-exception v2

    .line 69
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    :cond_1
    aget-byte v2, v4, v3

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v4, v5

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v2, v5

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v4, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v2, v5

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v4, v5

    add-int/2addr v2, v5

    .line 74
    const v5, 0x504b0506

    if-ne v2, v5, :cond_2

    .line 76
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v6, v3, 0x4

    add-int/lit8 v7, v3, 0x4

    int-to-long v8, v7

    sub-long v8, v0, v8

    long-to-int v7, v8

    invoke-direct {v5, v4, v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    iget-object v5, p0, Lcom/kingroot/kinguser/btw;->bNU:Lcom/kingroot/kinguser/bts;

    invoke-virtual {v5, v2}, Lcom/kingroot/kinguser/bts;->a(Ljava/io/DataInputStream;)V

    .line 78
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :cond_2
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 79
    :catch_1
    move-exception v2

    .line 80
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public aic()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 129
    const/4 v2, 0x0

    .line 132
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/kingroot/kinguser/btw;->bNW:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    const/4 v1, 0x0

    move v4, v1

    .line 136
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    if-eqz v4, :cond_2

    .line 174
    :cond_0
    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 180
    :cond_1
    :goto_1
    return-void

    .line 137
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 138
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v4, v5

    .line 161
    goto :goto_0

    .line 140
    :sswitch_1
    new-instance v6, Lcom/kingroot/kinguser/btv;

    invoke-direct {v6}, Lcom/kingroot/kinguser/btv;-><init>()V

    .line 141
    invoke-virtual {v6, v3}, Lcom/kingroot/kinguser/btv;->a(Ljava/io/DataInputStream;)V

    .line 142
    new-instance v7, Ljava/lang/String;

    iget-object v1, v6, Lcom/kingroot/kinguser/btv;->bNB:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/kingroot/kinguser/btw;->bNS:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/kingroot/kinguser/btp;

    move-object v2, v0

    .line 144
    iget-short v1, v6, Lcom/kingroot/kinguser/btv;->bNP:S

    iput-short v1, v2, Lcom/kingroot/kinguser/btp;->bNu:S

    .line 145
    iget-short v1, v2, Lcom/kingroot/kinguser/btp;->bNu:S

    if-lez v1, :cond_3

    .line 146
    iget-object v1, v6, Lcom/kingroot/kinguser/btv;->bNQ:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v2, Lcom/kingroot/kinguser/btp;->bNC:[B

    .line 149
    :cond_3
    iget v1, v2, Lcom/kingroot/kinguser/btp;->bNr:I

    iput v1, v6, Lcom/kingroot/kinguser/btv;->bNr:I

    .line 150
    iget v1, v2, Lcom/kingroot/kinguser/btp;->bNs:I

    iput v1, v6, Lcom/kingroot/kinguser/btv;->bNs:I

    .line 151
    iget v1, v2, Lcom/kingroot/kinguser/btp;->bNq:I

    iput v1, v6, Lcom/kingroot/kinguser/btv;->bNq:I

    .line 153
    iget v1, v6, Lcom/kingroot/kinguser/btv;->bNr:I

    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 154
    iget-object v1, p0, Lcom/kingroot/kinguser/btw;->bNR:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v7, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 172
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 174
    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    goto :goto_1

    .line 157
    :sswitch_2
    const/16 v1, 0xc

    :try_start_4
    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->skipBytes(I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v1

    .line 174
    :goto_3
    if-eqz v3, :cond_4

    .line 175
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 177
    :cond_4
    throw v1

    :sswitch_3
    move v4, v5

    .line 163
    goto :goto_0

    .line 173
    :catchall_1
    move-exception v1

    move-object v3, v2

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v3, v2

    goto :goto_3

    .line 170
    :catch_1
    move-exception v1

    goto :goto_2

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x504b0102 -> :sswitch_0
        0x504b0304 -> :sswitch_1
        0x504b0506 -> :sswitch_3
        0x504b0708 -> :sswitch_2
    .end sparse-switch
.end method

.method public nf(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 29
    iput-object p1, p0, Lcom/kingroot/kinguser/btw;->bNW:Ljava/lang/String;

    .line 32
    const/4 v2, 0x0

    .line 34
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-eqz v1, :cond_0

    .line 36
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/btw;->bNV:J

    .line 37
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/btw;->b(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    :cond_0
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 48
    :cond_1
    :goto_0
    const-string v0, "ZipFileParser"

    const-string v1, "readEndOfCentralDirRecord finished."

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/but;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/btw;->aib()V

    .line 51
    const-string v0, "ZipFileParser"

    const-string v1, "readCentralDirFileHeaderList finished."

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/but;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/kingroot/kinguser/btw;->aic()V

    .line 54
    const-string v0, "ZipFileParser"

    const-string v1, "readLocalFileHeader finished."

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/but;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 40
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 42
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 44
    :goto_2
    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 47
    :cond_2
    throw v0

    .line 43
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 40
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public ng(Ljava/lang/String;)Lcom/kingroot/kinguser/btp;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/btw;->bNS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/btp;

    return-object v0
.end method

.method public nh(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/btw;->bNS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/btp;

    .line 193
    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/btw;->bNR:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/btv;

    .line 197
    if-nez v1, :cond_1

    .line 198
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 201
    :cond_1
    iget-short v2, v1, Lcom/kingroot/kinguser/btv;->bNt:S

    add-int/lit8 v2, v2, 0x1e

    iget-short v1, v1, Lcom/kingroot/kinguser/btv;->bNP:S

    add-int/2addr v1, v2

    .line 203
    iget v0, v0, Lcom/kingroot/kinguser/btp;->offset:I

    add-int/2addr v0, v1

    return v0
.end method
