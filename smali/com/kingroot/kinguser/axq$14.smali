.class Lcom/kingroot/kinguser/axq$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbg:Lcom/kingroot/kinguser/axq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axq;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$14;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$14;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AdaptRankingActivity;->aL(Landroid/content/Context;)V

    .line 796
    return-void
.end method
