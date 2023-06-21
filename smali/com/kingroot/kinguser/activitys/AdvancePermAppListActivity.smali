.class public Lcom/kingroot/kinguser/activitys/AdvancePermAppListActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/kingroot/kinguser/aww;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aww;-><init>(Landroid/content/Context;)V

    .line 15
    return-object v0
.end method
