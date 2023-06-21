.class Lcom/kingroot/kinguser/atm$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$21;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$21;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingroot/kinguser/atm$21;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v2}, Lcom/kingroot/kinguser/atm;->e(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->getCurHotWord()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/activitys/AppSearchActivity;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method
