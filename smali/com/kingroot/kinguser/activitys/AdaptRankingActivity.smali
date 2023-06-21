.class public Lcom/kingroot/kinguser/activitys/AdaptRankingActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    .line 16
    const-string v0, "ku_applicationAdaptRankingActivity"

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/AdaptRankingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static aL(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/kinguser/activitys/AdaptRankingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/kingroot/kinguser/awu;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/awu;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v1, Lcom/kingroot/kinguser/aum;

    invoke-direct {v1, v0, p0}, Lcom/kingroot/kinguser/aum;-><init>(Lcom/kingroot/kinguser/aud$b;Landroid/app/Activity;)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/awu;->a(Lcom/kingroot/kinguser/aud$a;)V

    .line 23
    return-object v0
.end method
