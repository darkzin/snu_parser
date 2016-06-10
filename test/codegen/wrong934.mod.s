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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 6 of <array 1 of <array 3 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 2 of <array 1 of <array 2 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
    movl    $100, %eax              #   3:     return 100
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_7_while_cond:
    movl    $35027, %eax            #  10:     sub    t4 <- 35027, 28113
    movl    $28113, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $49783, %eax            #  11:     sub    t5 <- 49783, 49756
    movl    $49756, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  12:     if     t4 = t5 goto 8_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_8_while_body      
    jmp     l_f0_6                  #  13:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  15:     goto   7_while_cond
l_f0_6:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $v0       <char> %ebp-34 ]
    #    -35(%ebp)   1  [ $v1       <bool> %ebp-35 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    movl    $99, %eax               #   3:     assign v0 <- 99
    movb    %al, -34(%ebp)         
    jmp     l_f1_5                  #   4:     goto   5
l_f1_5:
    movl    $98, %eax               #   6:     assign v0 <- 98
    movb    %al, -34(%ebp)         
    movl    $100, %eax              #   7:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_12_if_false        #   8:     goto   12_if_false
    jmp     l_f1_10                 #   9:     goto   10
l_f1_12_if_false:
l_f1_10:
    jmp     l_f1_13                 #  12:     goto   13
l_f1_13:
    call    dummyProcedure          #  14:     call   dummyProcedure
    jmp     l_f1_1_while_cond       #  15:     goto   1_while_cond
l_f1_0:
    movl    $29418, %eax            #  17:     mul    t2 <- 29418, 50316
    movl    $50316, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     div    t3 <- t2, 94066
    movl    $94066, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     sub    t4 <- t3, 36063
    movl    $36063, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     sub    t5 <- t4, 53729
    movl    $53729, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     add    t6 <- t5, 69914
    movl    $69914, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     if     t6 # 14367 goto 18
    movl    $14367, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_18                
    jmp     l_f1_19                 #  23:     goto   19
l_f1_18:
    movl    $1, %eax                #  25:     assign t7 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_20                 #  26:     goto   20
l_f1_19:
    movl    $0, %eax                #  28:     assign t7 <- 0
    movb    %al, -33(%ebp)         
l_f1_20:
    movzbl  -33(%ebp), %eax         #  30:     assign v1 <- t7
    movb    %al, -35(%ebp)         
l_f1_23_while_cond:
    jmp     l_f1_26                 #  32:     goto   26
    jmp     l_f1_26                 #  33:     goto   26
l_f1_26:
    jmp     l_f1_24_while_body      #  35:     goto   24_while_body
l_f1_24_while_body:
    jmp     l_f1_23_while_cond      #  37:     goto   23_while_cond

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -22(%ebp)   1  [ $v1       <char> %ebp-22 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    movl    $97, %eax               #   1:     assign v1 <- 97
    movb    %al, -22(%ebp)         
    jmp     l_f2_7_if_false         #   2:     goto   7_if_false
    jmp     l_f2_5                  #   3:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $25536, %eax            #   6:     if     25536 > 36327 goto 9_if_true
    movl    $36327, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   7:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #   9:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $1, %eax                #  12:     return 1
    jmp     l_f2_exit              
    movl    $77729, %eax            #  13:     if     77729 <= 82965 goto 14
    movl    $82965, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_14                
    jmp     l_f2_15                 #  14:     goto   15
l_f2_14:
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_16                 #  17:     goto   16
l_f2_15:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_16:
    movzbl  -13(%ebp), %eax         #  21:     return t2
    jmp     l_f2_exit              
    movl    $74889, %eax            #  22:     assign v0 <- 74889
    movl    %eax, 8(%ebp)          
    jmp     l_f2_0                  #  23:     goto   0
l_f2_0:
    call    dummyINTfunc            #  25:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f2_22                 #  26:     goto   22
    movl    $1, %eax                #  27:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_23                 #  28:     goto   23
l_f2_22:
    movl    $0, %eax                #  30:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f2_23:
    movzbl  -21(%ebp), %eax         #  32:     return t4
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    jmp     l_test_exit            
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
