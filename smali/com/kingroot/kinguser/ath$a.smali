.class Lcom/kingroot/kinguser/ath$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field aNQ:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

.field azX:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ath$a;->azX:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ath$1;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/kingroot/kinguser/ath$a;-><init>()V

    return-void
.end method
