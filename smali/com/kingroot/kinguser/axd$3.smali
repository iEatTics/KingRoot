.class Lcom/kingroot/kinguser/axd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axd;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axd;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/kingroot/kinguser/axd$3;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 364
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18912

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 365
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$3;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axd;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axd$3;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->d(Lcom/kingroot/kinguser/axd;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/activitys/AppSearchActivity;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method
