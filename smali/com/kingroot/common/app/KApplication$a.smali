.class Lcom/kingroot/common/app/KApplication$a;
.super Lcom/kingroot/kinguser/ri;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/app/KApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private FB:Lcom/kingroot/kinguser/cbw;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/kingroot/kinguser/ri;-><init>()V

    .line 633
    new-instance v0, Lcom/kingroot/common/app/KApplication$a$1;

    invoke-direct {v0, p0}, Lcom/kingroot/common/app/KApplication$a$1;-><init>(Lcom/kingroot/common/app/KApplication$a;)V

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$a;->FB:Lcom/kingroot/kinguser/cbw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/common/app/KApplication$1;)V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/kingroot/common/app/KApplication$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 708
    return-void
.end method

.method public hV()Lcom/kingroot/kinguser/rh;
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    return-object v0
.end method

.method public hW()Lcom/kingroot/kinguser/cbw;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/kingroot/common/app/KApplication$a;->FB:Lcom/kingroot/kinguser/cbw;

    return-object v0
.end method

.method public hX()Lcom/kingroot/kinguser/zf;
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    return-object v0
.end method

.method public if()Lcom/kingroot/kinguser/vo;
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    return-object v0
.end method

.method public ig()Lcom/kingroot/kinguser/zv;
    .locals 1

    .prologue
    .line 732
    new-instance v0, Lcom/kingroot/kinguser/zv$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/zv$a;-><init>()V

    .line 733
    invoke-virtual {v0}, Lcom/kingroot/kinguser/zv$a;->pH()Lcom/kingroot/kinguser/zv;

    move-result-object v0

    return-object v0
.end method

.method public ir()Lcom/kingroot/kinguser/abs;
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    return-object v0
.end method

.method public iv()Lcom/kingroot/kinguser/rh;
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()I
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 606
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method
