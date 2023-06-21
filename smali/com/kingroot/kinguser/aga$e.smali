.class public Lcom/kingroot/kinguser/aga$e;
.super Lcom/kingroot/kinguser/aga$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/kingroot/kinguser/aga$a;-><init>()V

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/aga$e;->type:I

    .line 173
    iput-object p1, p0, Lcom/kingroot/kinguser/aga$e;->title:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public static fo(Ljava/lang/String;)Lcom/kingroot/kinguser/aga$e;
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/kingroot/kinguser/aga$e;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aga$e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
