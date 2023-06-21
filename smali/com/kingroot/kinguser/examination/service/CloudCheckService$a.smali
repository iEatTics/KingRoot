.class public Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/examination/service/CloudCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;",
        ">;"
    }
.end annotation


# instance fields
.field aMp:J

.field aMq:Lcom/tencent/securemodule/api/AppInfo;

.field apkPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/securemodule/api/AppInfo;)V
    .locals 2

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->apkPath:Ljava/lang/String;

    .line 407
    iput-object p2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->aMq:Lcom/tencent/securemodule/api/AppInfo;

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->aMp:J

    .line 409
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;)I
    .locals 4
    .param p1    # Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->aMp:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->aMp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->aMp:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->aMp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 400
    check-cast p1, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->a(Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;)I

    move-result v0

    return v0
.end method
