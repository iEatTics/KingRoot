.class Lcom/kingroot/kinguser/axm$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bhw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->Qi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$14;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1254
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1878b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1257
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$14;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axm;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/SoftwareHelpActivity;->j(Landroid/content/Context;I)V

    .line 1258
    return-void
.end method
