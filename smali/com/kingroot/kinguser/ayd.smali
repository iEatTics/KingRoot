.class public Lcom/kingroot/kinguser/ayd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ayd$b;,
        Lcom/kingroot/kinguser/ayd$a;
    }
.end annotation


# static fields
.field private static final ZE:Landroid/os/Handler;

.field private static final bcF:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/ayd$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/kingroot/kinguser/wn;->nw()Lcom/kingroot/kinguser/wn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/wn;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kingroot/kinguser/ayd;->ZE:Landroid/os/Handler;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/ayd;->bcF:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic UM()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/kingroot/kinguser/ayd;->ZE:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic UN()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/kingroot/kinguser/ayd;->bcF:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static a(ILjava/lang/Runnable;J)Z
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    .line 92
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/ayd$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingroot/kinguser/ayd$a;-><init>(ILjava/lang/Runnable;J)V

    .line 93
    sget-object v1, Lcom/kingroot/kinguser/ayd;->ZE:Landroid/os/Handler;

    new-instance v2, Lcom/kingroot/kinguser/ayd$1;

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/ayd$1;-><init>(Lcom/kingroot/kinguser/ayd$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hF(I)V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/kingroot/kinguser/ayd;->ZE:Landroid/os/Handler;

    new-instance v1, Lcom/kingroot/kinguser/ayd$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ayd$2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method
