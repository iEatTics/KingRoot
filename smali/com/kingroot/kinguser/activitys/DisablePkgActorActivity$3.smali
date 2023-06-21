.class Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$3;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$3;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->b(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;

    .line 227
    iget-boolean v1, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->afR:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->afR:Z

    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$3;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->c(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$3;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->c(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->notifyDataSetChanged()V

    .line 232
    :cond_0
    return-void

    .line 227
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
