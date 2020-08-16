.class public Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;
.super Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;
.source "OSSStsTokenCredentialProvider.java"


# instance fields
.field private accessKeyId:Ljava/lang/String;

.field private secretKeyId:Ljava/lang/String;

.field private securityToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempAK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->setAccessKeyId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempSK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->setSecretKeyId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->setSecurityToken(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->setAccessKeyId(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->setSecretKeyId(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->setSecurityToken(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    .locals 6

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->accessKeyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->secretKeyId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->securityToken:Ljava/lang/String;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public getSecretKeyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->secretKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->securityToken:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->accessKeyId:Ljava/lang/String;

    return-void
.end method

.method public setSecretKeyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->secretKeyId:Ljava/lang/String;

    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->securityToken:Ljava/lang/String;

    return-void
.end method
