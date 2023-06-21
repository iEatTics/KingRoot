.class public Lcom/kingroot/kinguser/amy$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/amy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field azX:Z

.field public azY:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

.field public azZ:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/amy$a;->azX:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/amy$1;)V
    .locals 0

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/kingroot/kinguser/amy$a;-><init>()V

    return-void
.end method
