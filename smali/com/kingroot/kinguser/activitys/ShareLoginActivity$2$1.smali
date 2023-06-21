.class Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiU:Lcom/kingroot/kinguser/bid;

.field final synthetic aiV:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;Lcom/kingroot/kinguser/bid;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$1;->aiV:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$1;->aiU:Lcom/kingroot/kinguser/bid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$1;->aiU:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 186
    return-void
.end method
