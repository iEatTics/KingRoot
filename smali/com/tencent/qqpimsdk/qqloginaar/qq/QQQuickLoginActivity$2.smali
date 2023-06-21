.class Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kingroot/kinguser/cci;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->b(Ljava/lang/String;[B[BLjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bNf:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

.field final synthetic byV:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$2;->bNf:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    iput-object p2, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$2;->byV:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/kingroot/kinguser/btj;

    invoke-direct {v0}, Lcom/kingroot/kinguser/btj;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/kingroot/kinguser/btj;->a:I

    iget-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$2;->byV:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 1

    const/16 v0, 0x427b

    if-ne p2, v0, :cond_0

    if-nez p5, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$2;->a()V

    :goto_0
    return-void

    :cond_1
    instance-of v0, p5, Lcom/kingroot/kinguser/btj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$2;->byV:Ljava/util/concurrent/LinkedBlockingQueue;

    check-cast p5, Lcom/kingroot/kinguser/btj;

    invoke-virtual {v0, p5}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$2;->a()V

    goto :goto_0
.end method
