.class Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;
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
    .line 62
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$1;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 65
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$1;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 79
    :cond_0
    return-void

    .line 72
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$1;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->b(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;

    .line 74
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->pkgName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "pm enable %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->pkgName:Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    goto :goto_0
.end method
