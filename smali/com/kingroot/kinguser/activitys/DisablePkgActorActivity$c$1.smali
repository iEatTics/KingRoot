.class Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiu:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;

.field final synthetic aiv:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c$1;->aiv:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;

    iput-object p2, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c$1;->aiu:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 332
    if-eqz p2, :cond_0

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c$1;->aiv:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c$1;->aiu:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c$1;->aiv:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c$1;->aiu:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
