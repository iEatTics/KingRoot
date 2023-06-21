.class Lcom/kingroot/kinguser/activitys/SelectAppsActivity$3$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/SelectAppsActivity$3;->a(Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiE:Ljava/util/List;

.field final synthetic aiG:Lcom/kingroot/kinguser/activitys/SelectAppsActivity$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/SelectAppsActivity$3;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$3$1;->aiG:Lcom/kingroot/kinguser/activitys/SelectAppsActivity$3;

    iput-object p2, p0, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$3$1;->aiE:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 195
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$3$1;->aiE:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/agy;->b(Ljava/util/List;I)V

    .line 196
    return-void
.end method
