.class Lcom/kingroot/kinguser/axq$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axq;->d(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbg:Lcom/kingroot/kinguser/axq;

.field final synthetic bbi:Lcom/kingroot/kinguser/bcl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axq;Lcom/kingroot/kinguser/bcl;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$8;->bbg:Lcom/kingroot/kinguser/axq;

    iput-object p2, p0, Lcom/kingroot/kinguser/axq$8;->bbi:Lcom/kingroot/kinguser/bcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$8;->bbi:Lcom/kingroot/kinguser/bcl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcl;->ib(I)V

    .line 444
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$8;->bbi:Lcom/kingroot/kinguser/bcl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcl;->ia(I)V

    .line 445
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$8;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axq;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axq$8$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axq$8$1;-><init>(Lcom/kingroot/kinguser/axq$8;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    return-void
.end method
