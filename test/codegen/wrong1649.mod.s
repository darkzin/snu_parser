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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 36 of <array 80 of <array 45 of <array 73 of <array 28 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 15 of <array 58 of <array 52 of <array 64 of <array 78 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t7
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f0_3_while_cond:
    call    dummyBOOLfunc           #   4:     call   t9 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   5:     if     t9 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4_while_body      
    jmp     l_f0_2                  #   6:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   8:     goto   3_while_cond
l_f0_2:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 15 of <array 58 of <array 52 of <array 64 of <array 78 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 36 of <array 80 of <array 45 of <array 73 of <array 28 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $v0       <char> %ebp-26 ]
    #   -264902452(%ebp)  264902424  [ $v1       <array 36 of <array 80 of <array 45 of <array 73 of <array 28 of <char>>>>>> %ebp-264902452 ]
    #   -490740556(%ebp)  225838104  [ $v2       <array 15 of <array 58 of <array 52 of <array 64 of <array 78 of <char>>>>>> %ebp-490740556 ]
    #   -490740557(%ebp)   1  [ $v3       <bool> %ebp-490740557 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $490740548, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $122685137, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-264902452(%ebp)     # local array 'v1': 5 dimensions
    movl    $36,-264902448(%ebp)    #   dimension 1: 36 elements
    movl    $80,-264902444(%ebp)    #   dimension 2: 80 elements
    movl    $45,-264902440(%ebp)    #   dimension 3: 45 elements
    movl    $73,-264902436(%ebp)    #   dimension 4: 73 elements
    movl    $28,-264902432(%ebp)    #   dimension 5: 28 elements
    movl    $5,-490740556(%ebp)     # local array 'v2': 5 dimensions
    movl    $15,-490740552(%ebp)    #   dimension 1: 15 elements
    movl    $58,-490740548(%ebp)    #   dimension 2: 58 elements
    movl    $52,-490740544(%ebp)    #   dimension 3: 52 elements
    movl    $64,-490740540(%ebp)    #   dimension 4: 64 elements
    movl    $78,-490740536(%ebp)    #   dimension 5: 78 elements

    # function body
    movl    $0, %eax                #   0:     param  3 <- 0
    pushl   %eax                   
    leal    -490740556(%ebp), %eax  #   1:     &()    t7 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  2 <- t7
    pushl   %eax                   
    movl    $100, %eax              #   3:     param  1 <- 100
    pushl   %eax                   
    leal    -264902452(%ebp), %eax  #   4:     &()    t8 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #   6:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   7:     assign v0 <- t9
    movb    %al, -26(%ebp)         
    call    dummyBOOLfunc           #   8:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     if     t10 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_3                  #  10:     goto   3
l_f1_5:
    movl    $1, %eax                #  12:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #  13:     goto   4
l_f1_3:
    movl    $0, %eax                #  15:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #  17:     return t11
    jmp     l_f1_exit              
    movl    $0, %eax                #  18:     assign v3 <- 0
    movb    %al, -490740557(%ebp)  

l_f1_exit:
    # epilogue
    addl    $490740548, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 36 of <array 80 of <array 45 of <array 73 of <array 28 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t8       <char> %ebp-23 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 15 of <array 58 of <array 52 of <array 64 of <array 78 of <char>>>>>>> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 54 of <array 59 of <array 100 of <array 29 of <array 94 of <char>>>>>>> %ebp+8 ]
    #    -29(%ebp)   1  [ $v1       <char> %ebp-29 ]
    #   -264902456(%ebp)  264902424  [ $v2       <array 36 of <array 80 of <array 45 of <array 73 of <array 28 of <char>>>>>> %ebp-264902456 ]
    #   -490740560(%ebp)  225838104  [ $v3       <array 15 of <array 58 of <array 52 of <array 64 of <array 78 of <char>>>>>> %ebp-490740560 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $490740548, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $122685137, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-264902456(%ebp)     # local array 'v2': 5 dimensions
    movl    $36,-264902452(%ebp)    #   dimension 1: 36 elements
    movl    $80,-264902448(%ebp)    #   dimension 2: 80 elements
    movl    $45,-264902444(%ebp)    #   dimension 3: 45 elements
    movl    $73,-264902440(%ebp)    #   dimension 4: 73 elements
    movl    $28,-264902436(%ebp)    #   dimension 5: 28 elements
    movl    $5,-490740560(%ebp)     # local array 'v3': 5 dimensions
    movl    $15,-490740556(%ebp)    #   dimension 1: 15 elements
    movl    $58,-490740552(%ebp)    #   dimension 2: 58 elements
    movl    $52,-490740548(%ebp)    #   dimension 3: 52 elements
    movl    $64,-490740544(%ebp)    #   dimension 4: 64 elements
    movl    $78,-490740540(%ebp)    #   dimension 5: 78 elements

    # function body
    movl    $99, %eax               #   0:     if     99 # 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f2_3:
    movzbl  -22(%ebp), %eax         #   8:     return t7
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   9:     call   t8 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movl    $1, %eax                #  10:     param  3 <- 1
    pushl   %eax                   
    leal    -490740560(%ebp), %eax  #  11:     &()    t9 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  2 <- t9
    pushl   %eax                   
    call    dummyCHARfunc           #  13:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  14:     param  1 <- t10
    pushl   %eax                   
    leal    -264902456(%ebp), %eax  #  15:     &()    t11 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  17:     call   t12 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  18:     assign v1 <- t12
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $490740548, %esp        # remove locals
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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    call    dummyINTfunc            #   2:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $3588, %eax             #   3:     mul    t2 <- 3588, 82315
    movl    $82315, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     div    t3 <- t2, 10577
    movl    $10577, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     mul    t4 <- t3, 12907
    movl    $12907, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #   6:     if     t1 < t4 goto 3_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_3_while_body    
    jmp     l_test_1                #   7:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    movl    $28660, %eax            #  12:     mul    t5 <- 28660, 87710
    movl    $87710, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     mul    t6 <- t5, 48136
    movl    $48136, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  14:     if     t6 = 30439 goto 7_if_true
    movl    $30439, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #  15:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #  17:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
