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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -22(%ebp)   1  [ $v1       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $v2       <char> %ebp-23 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   1:     goto   0
l_f0_0:
    movl    $5414, %eax             #   3:     add    t3 <- 5414, 97736
    movl    $97736, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    movl    $89689, %eax            #   6:     if     89689 > 89296 goto 6_if_true
    movl    $89296, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   7:     goto   7_if_false
l_f0_6_if_true:
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #  10:     goto   10_while_cond
    jmp     l_f0_exit              
    movl    $0, %eax                #  12:     if     0 = 0 goto 14
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_14                
    jmp     l_f0_15                 #  13:     goto   15
l_f0_14:
    movl    $1, %eax                #  15:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_16                 #  16:     goto   16
l_f0_15:
    movl    $0, %eax                #  18:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f0_16:
    movzbl  -21(%ebp), %eax         #  20:     assign v1 <- t4
    movb    %al, -22(%ebp)         
    movl    $100, %eax              #  21:     assign v2 <- 100
    movb    %al, -23(%ebp)         
    jmp     l_f0_exit              
    jmp     l_f0_5                  #  23:     goto   5
l_f0_7_if_false:
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 91 of <array 28 of <array 64 of <array 67 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -16(%ebp)   1  [ $v3       <bool> %ebp-16 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $97, %eax               #   3:     assign v1 <- 97
    movb    %al, 12(%ebp)          
    movl    $83113, %eax            #   4:     assign v2 <- 83113
    movl    %eax, 16(%ebp)         
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_8_while_cond:
    jmp     l_f1_7                  #   9:     goto   7
    movl    $98, %eax               #  10:     if     98 < 97 goto 12
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_12                
    jmp     l_f1_13                 #  11:     goto   13
l_f1_12:
    movl    $1, %eax                #  13:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_14                 #  14:     goto   14
l_f1_13:
    movl    $0, %eax                #  16:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_14:
    movzbl  -13(%ebp), %eax         #  18:     assign v3 <- t2
    movb    %al, -16(%ebp)         
    jmp     l_f1_8_while_cond       #  19:     goto   8_while_cond
l_f1_7:
    call    dummyCHARfunc           #  21:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  22:     if     t3 <= 97 goto 17
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_17                
    jmp     l_f1_18                 #  23:     goto   18
l_f1_17:
    movl    $1, %eax                #  25:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_19                 #  26:     goto   19
l_f1_18:
    movl    $0, %eax                #  28:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_19:
    movzbl  -15(%ebp), %eax         #  30:     return t4
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 98 of <array 14 of <array 22 of <array 72 of <array 78 of <int>>>>>>> %ebp+12 ]
    #    -56(%ebp)   4  [ $v2       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
l_f2_2_while_cond:
    movl    $1886, %eax             #   4:     mul    t3 <- 1886, 93585
    movl    $93585, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     mul    t4 <- t3, 75619
    movl    $75619, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     div    t5 <- t4, 97625
    movl    $97625, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $4017, %eax             #   7:     if     4017 < t5 goto 3_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_while_body:
    movl    $97, %eax               #  10:     if     97 < 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  11:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  13:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_2_while_cond       #  16:     goto   2_while_cond
l_f2_1:
    movl    $34765, %eax            #  18:     mul    t6 <- 34765, 2986
    movl    $2986, %ebx            
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     add    t7 <- t6, 96235
    movl    $96235, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     sub    t8 <- t7, 20874
    movl    $20874, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     add    t9 <- t8, 75964
    movl    $75964, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t10 <- t9, 66677
    movl    $66677, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     add    t11 <- t10, 55698
    movl    $55698, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     assign v2 <- t11
    movl    %eax, -56(%ebp)        

l_f2_exit:
    # epilogue
    addl    $44, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t0
    movb    %al, v0                
l_test_3_while_cond:
    movl    $99, %eax               #   4:     if     99 > 99 goto 8
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_8               
    jmp     l_test_9                #   5:     goto   9
l_test_8:
    movl    $1, %eax                #   7:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_10               #   8:     goto   10
l_test_9:
    movl    $0, %eax                #  10:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_10:
    movzbl  -14(%ebp), %eax         #  12:     assign v1 <- t1
    movb    %al, v1                
    movl    $97, %eax               #  13:     assign v0 <- 97
    movb    %al, v0                
    movl    $1, %eax                #  14:     assign v1 <- 1
    movb    %al, v1                
l_test_15_while_cond:
    jmp     l_test_15_while_cond    #  16:     goto   15_while_cond
    jmp     l_test_3_while_cond     #  17:     goto   3_while_cond

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
