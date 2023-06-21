.class Lcom/kingroot/kinguser/axo$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axo;->Uz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axo;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/kingroot/kinguser/axo$9;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 377
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bc(Z)V

    .line 378
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$9;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v0}, Lcom/kingroot/kinguser/axo;->d(Lcom/kingroot/kinguser/axo;)V

    .line 379
    return-void
.end method
