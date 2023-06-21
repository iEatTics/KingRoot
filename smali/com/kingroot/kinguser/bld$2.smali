.class Lcom/kingroot/kinguser/bld$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bzG:Lcom/kingroot/kinguser/bld;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bld;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/kingroot/kinguser/bld$2;->bzG:Lcom/kingroot/kinguser/bld;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 275
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeg;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    .line 276
    return-void
.end method
