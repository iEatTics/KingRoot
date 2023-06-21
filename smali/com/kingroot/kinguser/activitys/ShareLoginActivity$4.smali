.class Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;
.super Lcom/kingroot/kinguser/we$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/activitys/ShareLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/we$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZLcom/kingroot/kinguser/wd$a;)V
    .locals 1

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->finish()V

    .line 298
    :goto_0
    return-void

    .line 284
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4$1;-><init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
