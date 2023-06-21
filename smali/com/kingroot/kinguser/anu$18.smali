.class Lcom/kingroot/kinguser/anu$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$18;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$18;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingroot/kinguser/anu$18;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v2}, Lcom/kingroot/kinguser/anu;->d(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->getCurHotWord()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/activitys/AppSearchActivity;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method
