.class public Loicq/wlogin_sdk/a/j;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static x:Z

.field public static y:J

.field public static z:Ljava/lang/String;


# instance fields
.field public A:[B

.field public B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Loicq/wlogin_sdk/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:[B

.field public f:[B

.field public g:J

.field public h:J

.field public i:I

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:I

.field public n:[B

.field public o:[B

.field public p:[B

.field public q:[B

.field public r:[B

.field public s:I

.field public t:I

.field public u:J

.field public v:[B

.field public w:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "e75734d01ad9b57f"

    sput-object v0, Loicq/wlogin_sdk/a/j;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Loicq/wlogin_sdk/a/j;->x:Z

    const-string v0, ""

    sput-object v0, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->c:Ljava/lang/String;

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->e:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->f:[B

    const/16 v0, 0x5f

    iput v0, p0, Loicq/wlogin_sdk/a/j;->i:I

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->k:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->l:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->n:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->o:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->p:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->q:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->r:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->A:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    return-void
.end method
