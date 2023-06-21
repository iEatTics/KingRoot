.class public Lcom/kingroot/kinguser/byw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public pkgName:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byw;->pkgName:Ljava/lang/String;

    .line 5
    const-string v0, "0.0.0"

    iput-object v0, p0, Lcom/kingroot/kinguser/byw;->versionName:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/byw;->versionCode:I

    return-void
.end method
