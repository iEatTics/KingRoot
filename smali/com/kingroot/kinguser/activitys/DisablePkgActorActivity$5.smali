.class Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 251
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$5;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$5;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v2}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->c(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->vu()Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$5;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v2}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->e(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Lcom/kingroot/kinguser/bed;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 257
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18742

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$5;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->finish()V

    .line 259
    return-void
.end method
