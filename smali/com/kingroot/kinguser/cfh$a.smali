.class Lcom/kingroot/kinguser/cfh$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic cbV:Lcom/kingroot/kinguser/cfh;

.field ccd:J

.field cce:Lcom/kingroot/kinguser/bg;

.field ccf:[B

.field jW:J

.field pushType:I


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/cfh;IJJLcom/kingroot/kinguser/bg;[B)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh$a;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/cfh$a;->pushType:I

    .line 85
    iput p2, p0, Lcom/kingroot/kinguser/cfh$a;->pushType:I

    .line 86
    iput-wide p3, p0, Lcom/kingroot/kinguser/cfh$a;->ccd:J

    .line 87
    iput-wide p5, p0, Lcom/kingroot/kinguser/cfh$a;->jW:J

    .line 88
    iput-object p7, p0, Lcom/kingroot/kinguser/cfh$a;->cce:Lcom/kingroot/kinguser/bg;

    .line 89
    iput-object p8, p0, Lcom/kingroot/kinguser/cfh$a;->ccf:[B

    .line 90
    return-void
.end method
