.class public Lcom/kingroot/kinguser/bjw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/loader/sdk/service/IKlFragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startKlFragment(ILandroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 16
    invoke-static {p1, p2, p3}, Lcom/kingroot/loader/host/KlNotifyActivity;->b(ILandroid/content/Intent;I)Z

    .line 17
    return-void
.end method

.method public startMainFragment(II)V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {p1, v0, p2}, Lcom/kingroot/loader/host/KlNotifyActivity;->b(ILandroid/content/Intent;I)Z

    .line 23
    return-void
.end method
