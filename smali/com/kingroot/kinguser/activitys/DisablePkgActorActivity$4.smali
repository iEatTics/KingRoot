.class Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$4;
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
    .line 241
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$4;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$4;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->d(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 246
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18741

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$4;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->finish()V

    .line 248
    return-void
.end method
