.class public Loicq/wlogin_sdk/b/cp;
.super Loicq/wlogin_sdk/b/b;


# static fields
.field public static a:Z

.field public static i:I

.field public static j:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Loicq/wlogin_sdk/b/cp;->a:Z

    const/16 v0, 0x3e8

    sput v0, Loicq/wlogin_sdk/b/cp;->i:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Loicq/wlogin_sdk/b/cp;->j:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/16 v0, 0x508

    iput v0, p0, Loicq/wlogin_sdk/b/cp;->h:I

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/Boolean;
    .locals 5

    const/16 v4, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/b/cp;->g:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v0, p0, Loicq/wlogin_sdk/b/cp;->e:I

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Loicq/wlogin_sdk/b/cp;->a:Z

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    sput v0, Loicq/wlogin_sdk/b/cp;->i:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    new-array v0, v0, [B

    sput-object v0, Loicq/wlogin_sdk/b/cp;->j:[B

    sget-object v0, Loicq/wlogin_sdk/b/cp;->j:[B

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Loicq/wlogin_sdk/b/cp;->i:I

    if-nez v0, :cond_0

    sput v4, Loicq/wlogin_sdk/b/cp;->i:I

    :cond_0
    sget-object v0, Loicq/wlogin_sdk/b/cp;->j:[B

    if-nez v0, :cond_1

    new-array v0, v2, [B

    sput-object v0, Loicq/wlogin_sdk/b/cp;->j:[B

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    sget v1, Loicq/wlogin_sdk/b/cp;->i:I

    if-nez v1, :cond_4

    sput v4, Loicq/wlogin_sdk/b/cp;->i:I

    :cond_4
    sget-object v1, Loicq/wlogin_sdk/b/cp;->j:[B

    if-nez v1, :cond_2

    new-array v1, v2, [B

    sput-object v1, Loicq/wlogin_sdk/b/cp;->j:[B

    goto :goto_1

    :catchall_0
    move-exception v0

    sget v1, Loicq/wlogin_sdk/b/cp;->i:I

    if-nez v1, :cond_5

    sput v4, Loicq/wlogin_sdk/b/cp;->i:I

    :cond_5
    sget-object v1, Loicq/wlogin_sdk/b/cp;->j:[B

    if-nez v1, :cond_6

    new-array v1, v2, [B

    sput-object v1, Loicq/wlogin_sdk/b/cp;->j:[B

    :cond_6
    throw v0
.end method
