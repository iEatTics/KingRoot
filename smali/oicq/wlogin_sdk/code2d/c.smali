.class public Loicq/wlogin_sdk/code2d/c;
.super Ljava/lang/Object;


# static fields
.field public static i:[B

.field public static q:[B

.field public static r:[B

.field public static s:Z


# instance fields
.field public a:J

.field public b:I

.field public c:J

.field public d:[B

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public f:[B

.field public g:[B

.field public h:J

.field public j:[B

.field public k:J

.field public l:I

.field public m:I

.field public n:[B

.field public o:I

.field public p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/code2d/c;->i:[B

    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/code2d/c;->q:[B

    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/code2d/c;->r:[B

    sput-boolean v1, Loicq/wlogin_sdk/code2d/c;->s:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Loicq/wlogin_sdk/code2d/c;->a:J

    iput v1, p0, Loicq/wlogin_sdk/code2d/c;->b:I

    iput-wide v2, p0, Loicq/wlogin_sdk/code2d/c;->c:J

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/code2d/c;->d:[B

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/code2d/c;->f:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/code2d/c;->g:[B

    iput-wide v2, p0, Loicq/wlogin_sdk/code2d/c;->h:J

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/code2d/c;->j:[B

    iput-wide v2, p0, Loicq/wlogin_sdk/code2d/c;->k:J

    iput v1, p0, Loicq/wlogin_sdk/code2d/c;->l:I

    iput v1, p0, Loicq/wlogin_sdk/code2d/c;->m:I

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/code2d/c;->n:[B

    iput v1, p0, Loicq/wlogin_sdk/code2d/c;->o:I

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/code2d/c;->p:[B

    return-void
.end method
