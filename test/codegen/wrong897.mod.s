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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <char> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 4 of <array 10 of <array 10 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -40(%ebp)   4  [ $v2       <int> %ebp-40 ]

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
    movl    $17726, %eax            #   0:     sub    t4 <- 17726, 32519
    movl    $32519, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t4
    movl    %eax, -40(%ebp)        
    movl    $6745, %eax             #   2:     sub    t5 <- 6745, 13500
    movl    $13500, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t6 <- t5, 86766
    movl    $86766, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t7 <- t6, 2141
    movl    $2141, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t8 <- t7, 19772
    movl    $19772, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     assign v2 <- t8
    movl    %eax, -40(%ebp)        
    call    dummyCHARfunc           #   7:     call   t9 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #   8:     return t9
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 6 of <array 4 of <array 6 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 9 of <array 7 of <array 6 of <array 9 of <char>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v3       <bool> %ebp-29 ]

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
    movl    $57460, %eax            #   0:     sub    t4 <- 57460, 37272
    movl    $37272, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t4
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #   2:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $96980, %eax            #   3:     if     96980 > t5 goto 2
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_4                  #   7:     goto   4
l_f1_3:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f1_4:
    movzbl  -21(%ebp), %eax         #  11:     assign v3 <- t6
    movb    %al, -29(%ebp)         
l_f1_7_while_cond:
    movl    $69665, %eax            #  13:     if     69665 > 26597 goto 10
    movl    $26597, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_10                
    jmp     l_f1_11                 #  14:     goto   11
l_f1_10:
    movl    $1, %eax                #  16:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_12                 #  17:     goto   12
l_f1_11:
    movl    $0, %eax                #  19:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f1_12:
    movzbl  -22(%ebp), %eax         #  21:     assign v3 <- t7
    movb    %al, -29(%ebp)         
    jmp     l_f1_7_while_cond       #  22:     goto   7_while_cond

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $0, %eax                #   4:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   6:     return t4
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $97, %eax               #   8:     assign v0 <- 97
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #   9:     goto   8
l_f2_8:
    jmp     l_f2_6_while_cond       #  11:     goto   6_while_cond
    movl    $97, %eax               #  12:     if     97 >= 100 goto 13_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  13:     goto   14_if_false
l_f2_13_if_true:
    movl    $97, %eax               #  15:     if     97 = 97 goto 17_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  16:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  18:     goto   16
l_f2_18_if_false:
l_f2_16:
l_f2_21_while_cond:
    movl    $61647, %eax            #  22:     if     61647 >= 50179 goto 22_while_body
    movl    $50179, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_22_while_body     
    jmp     l_f2_20                 #  23:     goto   20
l_f2_22_while_body:
    movl    $97, %eax               #  25:     assign v0 <- 97
    movb    %al, -14(%ebp)         
    jmp     l_f2_21_while_cond      #  26:     goto   21_while_cond
l_f2_20:
    jmp     l_f2_12                 #  28:     goto   12
l_f2_14_if_false:
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 1 of <array 4 of <array 10 of <array 10 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_2                #   1:     goto   2
l_test_2:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #   4:     goto   4
    movl    $0, %eax                #   5:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_4:
    movzbl  -14(%ebp), %eax         #   7:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #   8:     &()    t2 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  10:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  11:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               
l_test_7_while_cond:
    jmp     l_test_8_while_body     #  14:     goto   8_while_body
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  16:     goto   7_while_cond

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <array 1 of <array 4 of <array 10 of <array 10 of <array 9 of <bool>>>>>>
    .long    5
    .long    1
    .long    4
    .long   10
    .long   10
    .long    9
    .skip 3600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
