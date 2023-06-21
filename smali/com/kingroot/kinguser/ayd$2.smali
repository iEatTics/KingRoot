.class final Lcom/kingroot/kinguser/ayd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayd;->hF(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/kingroot/kinguser/ayd$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/ayd;->UN()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/ayd$2;->val$id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ayd$b;

    .line 137
    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/kingroot/kinguser/ayd;->UM()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    invoke-static {}, Lcom/kingroot/kinguser/ayd;->UN()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/ayd$2;->val$id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 144
    :cond_0
    return-void
.end method
