.class Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2;->a(Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiE:Ljava/util/List;

.field final synthetic aiF:Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2$1;->aiF:Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2$1;->aiE:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2$1;->aiE:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ahl;->addProtectedPackages(Ljava/util/List;)V

    .line 108
    return-void
.end method
