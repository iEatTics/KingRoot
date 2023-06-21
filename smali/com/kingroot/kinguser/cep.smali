.class public Lcom/kingroot/kinguser/cep;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cep$a;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private bYt:Lcom/kingroot/kinguser/ceu;

.field private bYu:Lcom/kingroot/kinguser/cfu;

.field private bYx:Z

.field private bYy:I

.field private bYz:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingroot/kinguser/cep$a;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "HttpNetworkManager"

    sput-object v0, Lcom/kingroot/kinguser/cep;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/ceu;Lcom/kingroot/kinguser/cfu;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cep;->mLock:Ljava/lang/Object;

    .line 54
    iput v1, p0, Lcom/kingroot/kinguser/cep;->bYy:I

    .line 55
    iput-boolean v1, p0, Lcom/kingroot/kinguser/cep;->bYx:Z

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cep;->bYz:Ljava/util/LinkedList;

    .line 58
    new-instance v0, Lcom/kingroot/kinguser/cep$1;

    invoke-static {}, Lcom/kingroot/kinguser/cfd;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cep$1;-><init>(Lcom/kingroot/kinguser/cep;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cep;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/kingroot/kinguser/cep;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/kingroot/kinguser/cep;->bYt:Lcom/kingroot/kinguser/ceu;

    .line 88
    iput-object p3, p0, Lcom/kingroot/kinguser/cep;->bYu:Lcom/kingroot/kinguser/cfu;

    .line 89
    iput-boolean p4, p0, Lcom/kingroot/kinguser/cep;->bYx:Z

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cep;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/cep;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cep;Lcom/kingroot/kinguser/cff$d;[BLcom/kingroot/kinguser/ceo$a;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/cep;->b(Lcom/kingroot/kinguser/cff$d;[BLcom/kingroot/kinguser/ceo$a;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cep;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/cep;->bYy:I

    return v0
.end method

.method private b(Lcom/kingroot/kinguser/cff$d;[BLcom/kingroot/kinguser/ceo$a;)V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cep$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kingroot/kinguser/cep$2;-><init>(Lcom/kingroot/kinguser/cep;Lcom/kingroot/kinguser/cff$d;[BLcom/kingroot/kinguser/ceo$a;)V

    const-string v2, "shark-http-send"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/cep;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/cep;->bYz:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/cep;)I
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/cep;->bYy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/cep;->bYy:I

    return v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/cep;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/cep;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/cep;)Lcom/kingroot/kinguser/ceu;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/cep;->bYt:Lcom/kingroot/kinguser/ceu;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/cep;)Lcom/kingroot/kinguser/cfu;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/cep;->bYu:Lcom/kingroot/kinguser/cfu;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/cep;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cep;->bYx:Z

    return v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/cep;)I
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/cep;->bYy:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/kingroot/kinguser/cep;->bYy:I

    return v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/cep;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/cep;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/cff$d;[BLcom/kingroot/kinguser/ceo$a;)V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/kingroot/kinguser/cep;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cep;->bYz:Ljava/util/LinkedList;

    new-instance v2, Lcom/kingroot/kinguser/cep$a;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/kingroot/kinguser/cep$a;-><init>(Lcom/kingroot/kinguser/cep;[BLcom/kingroot/kinguser/cff$d;Lcom/kingroot/kinguser/ceo$a;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 101
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/cep;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
