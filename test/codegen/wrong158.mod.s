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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <char> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $19074, %eax            #   0:     div    t2 <- 19074, 71028
    movl    $71028, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t3 <- t2, 13792
    movl    $13792, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t4 <- t3, 57349
    movl    $57349, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t4
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   4:     call   t5 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $99, %eax               #   5:     if     99 > 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   6:     goto   4_if_false
l_f0_3_if_true:
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    jmp     l_f0_2                  #   9:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 10 of <array 6 of <array 9 of <array 1 of <int>>>>>>> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <char> %ebp-16 ]

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
    movl    $69388, %eax            #   0:     if     69388 = 13757 goto 1_if_true
    movl    $13757, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $97, %eax               #   3:     return 97
    jmp     l_f1_exit              
l_f1_6_while_cond:
    movl    $98, %eax               #   5:     if     98 <= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    movl    $97, %eax               #  10:     assign v2 <- 97
    movb    %al, -16(%ebp)         
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_11_while_cond:
    jmp     l_f1_12_while_body      #  15:     goto   12_while_body
    jmp     l_f1_12_while_body      #  16:     goto   12_while_body
l_f1_12_while_body:
    call    dummyBOOLfunc           #  18:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_11_while_cond      #  19:     goto   11_while_cond
    jmp     l_f1_21                 #  20:     goto   21
    movl    $1, %eax                #  21:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_22                 #  22:     goto   22
l_f1_21:
    movl    $0, %eax                #  24:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_22:
    jmp     l_f1_27                 #  26:     goto   27
    jmp     l_f1_28                 #  27:     goto   28
l_f1_27:
    movl    $1, %eax                #  29:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_29                 #  30:     goto   29
l_f1_28:
    movl    $0, %eax                #  32:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_29:
    movzbl  -14(%ebp), %eax         #  34:     if     t3 = t4 goto 17_if_true
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  35:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  37:     goto   16
l_f1_18_if_false:
l_f1_16:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 10 of <array 6 of <array 9 of <array 1 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 8 of <array 3 of <array 5 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #   -6536(%ebp)  6504  [ $v4       <array 3 of <array 10 of <array 6 of <array 9 of <array 1 of <int>>>>>> %ebp-6536 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $6524, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1631, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6536(%ebp)          # local array 'v4': 5 dimensions
    movl    $3,-6532(%ebp)          #   dimension 1: 3 elements
    movl    $10,-6528(%ebp)         #   dimension 2: 10 elements
    movl    $6,-6524(%ebp)          #   dimension 3: 6 elements
    movl    $9,-6520(%ebp)          #   dimension 4: 9 elements
    movl    $1,-6516(%ebp)          #   dimension 5: 1 elements

    # function body
    movl    $1, %eax                #   0:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   1:     goto   6
    movl    $0, %eax                #   2:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $0, %eax                #   4:     if     0 = t2 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   5:     goto   2_if_false
l_f2_1_if_true:
    movl    $79270, %eax            #   7:     assign v1 <- 79270
    movl    %eax, 8(%ebp)          
    call    f0                      #   8:     call   t3 <- f0
    movl    %eax, -20(%ebp)        
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    -6536(%ebp), %eax       #  12:     &()    t4 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  14:     call   t5 <- f1
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  15:     return t5
    jmp     l_f2_exit              
    call    ReadInt                 #  16:     call   t6 <- ReadInt
    movl    %eax, -32(%ebp)        

l_f2_exit:
    # epilogue
    addl    $6524, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $78189, %eax            #   7:     sub    t1 <- 78189, 84452
    movl    $84452, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     assign v0 <- t1
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    WriteLn                 #  11:     call   WriteLn
    movl    $1, %eax                #  12:     assign v1 <- 1
    movb    %al, v1                

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

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
