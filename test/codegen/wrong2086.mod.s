##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    call    dummyCHARfunc           #   2:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_0:
    movl    $0, %eax                #   5:     assign v0 <- 0
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   6:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   7:     return t11
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
    jmp     l_f1_0                  #   3:     goto   0
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   8:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     assign v2 <- t10
    movb    %al, -15(%ebp)         
    jmp     l_f1_14_if_false        #  10:     goto   14_if_false
    jmp     l_f1_12                 #  11:     goto   12
l_f1_14_if_false:
l_f1_12:
    call    dummyBOOLfunc           #  14:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_7                  #  15:     goto   7
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t14      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t15      <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f2_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t10 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    call    WriteLn                 #   5:     call   WriteLn
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    call    dummyBOOLfunc           #   8:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     if     t11 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_5                  #  10:     goto   5
l_f2_5:
    movl    $1, %eax                #  12:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_7                  #  13:     goto   7
    movl    $0, %eax                #  14:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f2_7:
    movzbl  -15(%ebp), %eax         #  16:     return t12
    jmp     l_f2_exit              
l_f2_11_while_cond:
    call    dummyCHARfunc           #  18:     call   t13 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    jmp     l_f2_14                 #  19:     goto   14
    jmp     l_f2_15                 #  20:     goto   15
l_f2_14:
    movl    $1, %eax                #  22:     assign t14 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_16                 #  23:     goto   16
l_f2_15:
    movl    $0, %eax                #  25:     assign t14 <- 0
    movb    %al, -17(%ebp)         
l_f2_16:
    movzbl  -17(%ebp), %eax         #  27:     param  0 <- t14
    pushl   %eax                   
    call    f0                      #  28:     call   t15 <- f0
    addl    $4, %esp               
    movb    %al, -18(%ebp)         
    movzbl  -16(%ebp), %eax         #  29:     if     t13 > t15 goto 12_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_12_while_body     
    jmp     l_f2_10                 #  30:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  32:     goto   11_while_cond
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
l_test_2_while_cond:
    movl    $99, %eax               #   2:     if     99 # 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    movl    $24931, %eax            #   6:     if     24931 >= 96422 goto 7_while_body
    movl    $96422, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #   7:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   9:     goto   6_while_cond
l_test_5:
    movl    $98541, %eax            #  11:     param  1 <- 98541
    pushl   %eax                   
    movl    $15389, %eax            #  12:     sub    t0 <- 15389, 13456
    movl    $13456, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     add    t1 <- t0, 74503
    movl    $74503, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t2 <- t1, 89674
    movl    $89674, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  16:     call   t3 <- f1
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    jmp     l_test_2_while_cond     #  17:     goto   2_while_cond
l_test_1:
    movl    $77416, %eax            #  19:     div    t4 <- 77416, 91326
    movl    $91326, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     mul    t5 <- t4, 62730
    movl    $62730, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     mul    t6 <- t5, 30780
    movl    $30780, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     div    t7 <- t6, 97096
    movl    $97096, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     div    t8 <- t7, 82817
    movl    $82817, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  24:     param  1 <- t8
    pushl   %eax                   
    movl    $47856, %eax            #  25:     param  0 <- 47856
    pushl   %eax                   
    call    f1                      #  26:     call   t9 <- f1
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
