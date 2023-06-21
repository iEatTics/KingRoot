.class public Lcom/kingroot/kinguser/aum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aud$a;


# instance fields
.field private aRy:Lcom/kingroot/kinguser/aud$b;

.field private aRz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aud$b;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aud$b;

    iput-object v0, p0, Lcom/kingroot/kinguser/aum;->aRy:Lcom/kingroot/kinguser/aud$b;

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p2}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aum;->aRz:Ljava/lang/ref/WeakReference;

    .line 20
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
