.class public Lcom/kingroot/kinguser/bra;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bIU:Lcom/kingroot/kinguser/bra;


# instance fields
.field private bIV:Z

.field private bIW:Ljava/lang/String;

.field private bIX:Z

.field private bIY:Z

.field private bIZ:Z

.field private bJa:Z

.field private bJb:Z

.field private bJc:Z

.field private bJd:Z

.field private bJe:Z

.field private bJf:Ljava/lang/String;

.field private bJg:Ljava/lang/String;

.field private bJh:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bJi:Z

.field private bJj:Z

.field private bJk:Z

.field private bJl:Landroid/content/Intent;

.field private bJm:Z

.field private bJn:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bra;->bIU:Lcom/kingroot/kinguser/bra;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Lcom/kingroot/kinguser/bra;->bIV:Z

    .line 29
    const-string v0, "TULog"

    iput-object v0, p0, Lcom/kingroot/kinguser/bra;->bIW:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bra;->bIX:Z

    .line 31
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bra;->bIY:Z

    .line 32
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bra;->bIZ:Z

    .line 34
    iput-boolean v2, p0, Lcom/kingroot/kinguser/bra;->bJa:Z

    .line 35
    iput-boolean v2, p0, Lcom/kingroot/kinguser/bra;->bJb:Z

    .line 36
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bra;->bJc:Z

    .line 37
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bra;->bJd:Z

    .line 38
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bra;->bJe:Z

    .line 40
    const-string v0, "xxx.pService"

    iput-object v0, p0, Lcom/kingroot/kinguser/bra;->bJf:Ljava/lang/String;

    .line 41
    const-string v0, "_xxx"

    iput-object v0, p0, Lcom/kingroot/kinguser/bra;->bJg:Ljava/lang/String;

    .line 43
    iput-object v3, p0, Lcom/kingroot/kinguser/bra;->bJh:Landroid/util/SparseArray;

    .line 44
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bra;->bJi:Z

    .line 45
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bra;->bJj:Z

    .line 47
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bra;->bJk:Z

    .line 48
    iput-object v3, p0, Lcom/kingroot/kinguser/bra;->bJl:Landroid/content/Intent;

    .line 50
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bra;->bJm:Z

    .line 51
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bra;->bJn:Z

    .line 66
    return-void
.end method

.method public static declared-synchronized ahv()Lcom/kingroot/kinguser/bra;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/kingroot/kinguser/bra;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bra;->bIU:Lcom/kingroot/kinguser/bra;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/kingroot/kinguser/bra;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bra;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bra;->bIU:Lcom/kingroot/kinguser/bra;

    .line 61
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bra;->bIU:Lcom/kingroot/kinguser/bra;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public d(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bIV:Z

    .line 121
    iput-object p2, p0, Lcom/kingroot/kinguser/bra;->bIW:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public eA(Z)V
    .locals 0

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bJj:Z

    .line 383
    return-void
.end method

.method public eB(Z)V
    .locals 0

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bJk:Z

    .line 399
    return-void
.end method

.method public eC(Z)V
    .locals 0

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bJm:Z

    .line 432
    return-void
.end method

.method public er(Z)V
    .locals 0

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bIX:Z

    .line 146
    return-void
.end method

.method public es(Z)V
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bIY:Z

    .line 162
    return-void
.end method

.method public et(Z)V
    .locals 0

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bIZ:Z

    .line 178
    return-void
.end method

.method public eu(Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bJa:Z

    .line 194
    return-void
.end method

.method public ev(Z)V
    .locals 0

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bJb:Z

    .line 210
    return-void
.end method

.method public ew(Z)V
    .locals 0

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bJc:Z

    .line 226
    return-void
.end method

.method public ex(Z)V
    .locals 0

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bJd:Z

    .line 282
    return-void
.end method

.method public ey(Z)V
    .locals 0

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bJe:Z

    .line 298
    return-void
.end method

.method public ez(Z)V
    .locals 0

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bra;->bJi:Z

    .line 375
    return-void
.end method

.method public varargs j([I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 336
    if-nez p1, :cond_1

    .line 347
    :cond_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bra;->bJh:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 341
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bra;->bJh:Landroid/util/SparseArray;

    .line 344
    :cond_2
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 345
    iget-object v4, p0, Lcom/kingroot/kinguser/bra;->bJh:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public mW(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/kingroot/kinguser/bra;->bJf:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public mX(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/kingroot/kinguser/bra;->bJg:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public p(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/kingroot/kinguser/bra;->bJl:Landroid/content/Intent;

    .line 416
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/kingroot/kinguser/bra;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method
