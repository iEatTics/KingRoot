.class public Lcom/kingroot/kinguser/ahg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ahg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public akM:Ljava/lang/String;

.field public apl:I

.field public apm:Ljava/lang/String;

.field public apn:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/ahg$a;->apl:I

    .line 320
    iput-object v1, p0, Lcom/kingroot/kinguser/ahg$a;->apm:Ljava/lang/String;

    .line 321
    iput-object v1, p0, Lcom/kingroot/kinguser/ahg$a;->akM:Ljava/lang/String;

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ahg$a;->apn:Z

    return-void
.end method
