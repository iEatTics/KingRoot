.class public Lcom/kingroot/kinguser/activitys/DefaultAppChosenActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/kingroot/kinguser/axd;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axd;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
