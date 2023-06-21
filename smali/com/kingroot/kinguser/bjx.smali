.class public Lcom/kingroot/kinguser/bjx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/loader/sdk/service/IKlNotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrapKlFragmentIntent(ILandroid/content/Intent;I)Landroid/content/Intent;
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-static {p1, p2, p3}, Lcom/kingroot/loader/host/KlNotifyActivity;->a(ILandroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
