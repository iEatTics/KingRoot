.class public Lcom/kingroot/kinguser/bwb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bwb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmeri/pluginsdk/IPiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public xt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/by;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bwb$a;->a:J

    .line 35
    iput v2, p0, Lcom/kingroot/kinguser/bwb$a;->b:I

    .line 36
    iput v2, p0, Lcom/kingroot/kinguser/bwb$a;->c:I

    .line 37
    iput v2, p0, Lcom/kingroot/kinguser/bwb$a;->d:I

    .line 38
    iput-object v3, p0, Lcom/kingroot/kinguser/bwb$a;->e:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bwb$a;->f:Ljava/util/HashMap;

    .line 40
    iput v2, p0, Lcom/kingroot/kinguser/bwb$a;->g:I

    .line 41
    iput-object v3, p0, Lcom/kingroot/kinguser/bwb$a;->xt:Ljava/util/ArrayList;

    .line 42
    return-void
.end method
