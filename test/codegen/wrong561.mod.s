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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <bool> %ebp-19 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
l_f0_1_while_cond:
    movl    $26926, %eax            #   1:     add    t2 <- 26926, 88839
    movl    $88839, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t2 >= 25591 goto 2_while_body
    movl    $25591, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
l_f0_8_while_cond:
    movl    $4034, %eax             #   8:     if     4034 > 2481 goto 9_while_body
    movl    $2481, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_9_while_body      
    jmp     l_f0_7                  #   9:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  11:     goto   8_while_cond
l_f0_7:
l_f0_12_while_cond:
    jmp     l_f0_12_while_cond      #  14:     goto   12_while_cond
    movl    $97, %eax               #  15:     assign v2 <- 97
    movb    %al, 16(%ebp)          
    movl    $39501, %eax            #  16:     assign v1 <- 39501
    movl    %eax, 12(%ebp)         
    movl    $89658, %eax            #  17:     if     89658 >= 67683 goto 17
    movl    $67683, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_17                
    jmp     l_f0_18                 #  18:     goto   18
l_f0_17:
    movl    $1, %eax                #  20:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_19                 #  21:     goto   19
l_f0_18:
    movl    $0, %eax                #  23:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f0_19:
    movzbl  -17(%ebp), %eax         #  25:     assign v0 <- t3
    movb    %al, 8(%ebp)           
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    movl    $74103, %eax            #  28:     assign v1 <- 74103
    movl    %eax, 12(%ebp)         
    movl    $79588, %eax            #  29:     if     79588 >= 93717 goto 25
    movl    $93717, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_25                
    jmp     l_f0_26                 #  30:     goto   26
l_f0_25:
    movl    $1, %eax                #  32:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_27                 #  33:     goto   27
l_f0_26:
    movl    $0, %eax                #  35:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f0_27:
    movzbl  -18(%ebp), %eax         #  37:     assign v0 <- t4
    movb    %al, 8(%ebp)           
    jmp     l_f0_4                  #  38:     goto   4
l_f0_4:
l_f0_30_while_cond:
    jmp     l_f0_31_while_body      #  41:     goto   31_while_body
    jmp     l_f0_29                 #  42:     goto   29
l_f0_31_while_body:
    call    dummyBOOLfunc           #  44:     call   t5 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    jmp     l_f0_30_while_cond      #  45:     goto   30_while_cond
l_f0_29:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]

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
    call    dummyBOOLfunc           #   1:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   8:     assign v1 <- 99
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 # t2 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $48108, %eax            #   4:     return 48108
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_6_while_cond:
    movl    $33451, %eax            #   9:     assign v1 <- 33451
    movl    %eax, -28(%ebp)        
    movl    $97, %eax               #  10:     assign v2 <- 97
    movb    %al, -29(%ebp)         
    jmp     l_f2_6_while_cond       #  11:     goto   6_while_cond
    movl    $82331, %eax            #  12:     div    t3 <- 82331, 70966
    movl    $70966, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     if     t3 > 94880 goto 13
    movl    $94880, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_13                
    jmp     l_f2_14                 #  14:     goto   14
l_f2_13:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_15                 #  17:     goto   15
l_f2_14:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f2_15:
    movzbl  -21(%ebp), %eax         #  21:     assign v0 <- t4
    movb    %al, 8(%ebp)           

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    movl    $96610, %eax            #   0:     param  0 <- 96610
    pushl   %eax                   
    call    f1                      #   1:     call   t0 <- f1
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyCHARfunc           #   4:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     assign v0 <- t1
    movb    %al, v0                

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
