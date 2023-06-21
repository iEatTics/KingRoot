.class Lcom/kingroot/kinguser/wq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic No:Lcom/kingroot/kinguser/wq$a;

.field final synthetic Np:Landroid/view/View;

.field final synthetic Nq:Lcom/kingroot/kinguser/wq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/wq;Lcom/kingroot/kinguser/wq$a;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingroot/kinguser/wq$1;->Nq:Lcom/kingroot/kinguser/wq;

    iput-object p2, p0, Lcom/kingroot/kinguser/wq$1;->No:Lcom/kingroot/kinguser/wq$a;

    iput-object p3, p0, Lcom/kingroot/kinguser/wq$1;->Np:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/wq$1;->Nq:Lcom/kingroot/kinguser/wq;

    iget-object v1, p0, Lcom/kingroot/kinguser/wq$1;->No:Lcom/kingroot/kinguser/wq$a;

    iget-object v2, p0, Lcom/kingroot/kinguser/wq$1;->Np:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/wq;->a(Lcom/kingroot/kinguser/wq;Lcom/kingroot/kinguser/wq$a;Landroid/view/View;)Landroid/view/View;

    .line 87
    return-void
.end method
