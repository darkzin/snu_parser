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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 5 of <array 6 of <array 6 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -14(%ebp)   1  [ $v5       <bool> %ebp-14 ]

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
    movl    $100, %eax              #   0:     assign v4 <- 100
    movb    %al, 20(%ebp)          
    movl    $1, %eax                #   1:     assign v5 <- 1
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     return t5
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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 2 of <array 2 of <array 6 of <array 2 of <int>>>>>>> %ebp+8 ]
    #    -19(%ebp)   1  [ $v2       <bool> %ebp-19 ]

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
l_f1_1_while_cond:
    movl    $54275, %eax            #   1:     add    t5 <- 54275, 34584
    movl    $34584, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $63728, %eax            #   2:     if     63728 >= t5 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $41567, %eax            #   5:     if     41567 = 36213 goto 5
    movl    $36213, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_6                  #   6:     goto   6
l_f1_5:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_7                  #   9:     goto   7
l_f1_6:
    movl    $0, %eax                #  11:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_7:
    movzbl  -17(%ebp), %eax         #  13:     assign v2 <- t6
    movb    %al, -19(%ebp)         
    call    dummyBOOLfunc           #  14:     call   t7 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movl    $98, %eax               #  15:     if     98 <= 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  16:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  18:     goto   10
l_f1_12_if_false:
l_f1_10:
    jmp     l_f1_1_while_cond       #  21:     goto   1_while_cond
l_f1_0:
l_f1_15_while_cond:
    jmp     l_f1_14                 #  24:     goto   14
l_f1_18_while_cond:
    movl    $12797, %eax            #  26:     if     12797 >= 21095 goto 19_while_body
    movl    $21095, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_19_while_body     
    jmp     l_f1_17                 #  27:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  29:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_15_while_cond      #  31:     goto   15_while_cond
l_f1_14:
l_f1_22_while_cond:
    jmp     l_f1_21                 #  34:     goto   21
    jmp     l_f1_26_if_false        #  35:     goto   26_if_false
    jmp     l_f1_24                 #  36:     goto   24
l_f1_26_if_false:
l_f1_24:
    jmp     l_f1_29_if_false        #  39:     goto   29_if_false
    jmp     l_f1_27                 #  40:     goto   27
l_f1_29_if_false:
l_f1_27:
    jmp     l_f1_22_while_cond      #  43:     goto   22_while_cond
l_f1_21:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 8 of <array 2 of <array 2 of <array 6 of <array 2 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 1 of <array 2 of <array 2 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 9 of <array 5 of <array 3 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #   -1584(%ebp)  1560  [ $v4       <array 8 of <array 2 of <array 2 of <array 6 of <array 2 of <int>>>>>> %ebp-1584 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1572, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $393, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1584(%ebp)          # local array 'v4': 5 dimensions
    movl    $8,-1580(%ebp)          #   dimension 1: 8 elements
    movl    $2,-1576(%ebp)          #   dimension 2: 2 elements
    movl    $2,-1572(%ebp)          #   dimension 3: 2 elements
    movl    $6,-1568(%ebp)          #   dimension 4: 6 elements
    movl    $2,-1564(%ebp)          #   dimension 5: 2 elements

    # function body
    movl    $1, %eax                #   0:     if     1 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $47176, %eax            #   4:     if     47176 >= 67619 goto 6_while_body
    movl    $67619, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
l_f2_9_while_cond:
    jmp     l_f2_9_while_cond       #  10:     goto   9_while_cond
    call    ReadInt                 #  11:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f2_13_while_cond:
    movl    $14808, %eax            #  13:     if     14808 >= 37992 goto 14_while_body
    movl    $37992, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_14_while_body     
    jmp     l_f2_12                 #  14:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  16:     goto   13_while_cond
l_f2_12:
    leal    -1584(%ebp), %eax       #  18:     &()    t6 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  20:     call   t7 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #  21:     if     100 < 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  22:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  24:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_0                  #  27:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $57693, %eax            #  30:     if     57693 # 40386 goto 22_if_true
    movl    $40386, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_22_if_true        
    jmp     l_f2_23_if_false        #  31:     goto   23_if_false
l_f2_22_if_true:
l_f2_26_while_cond:
    movl    $27813, %eax            #  34:     if     27813 >= 24450 goto 27_while_body
    movl    $24450, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_27_while_body     
    jmp     l_f2_25                 #  35:     goto   25
l_f2_27_while_body:
    jmp     l_f2_26_while_cond      #  37:     goto   26_while_cond
l_f2_25:
l_f2_30_while_cond:
    movl    $63004, %eax            #  40:     if     63004 > 67274 goto 31_while_body
    movl    $67274, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_31_while_body     
    jmp     l_f2_29                 #  41:     goto   29
l_f2_31_while_body:
    jmp     l_f2_30_while_cond      #  43:     goto   30_while_cond
l_f2_29:
    jmp     l_f2_21                 #  45:     goto   21
l_f2_23_if_false:
l_f2_21:
    movl    $60903, %eax            #  48:     if     60903 <= 44593 goto 34_if_true
    movl    $44593, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_34_if_true        
    jmp     l_f2_35_if_false        #  49:     goto   35_if_false
l_f2_34_if_true:
l_f2_38_while_cond:
    jmp     l_f2_38_while_cond      #  52:     goto   38_while_cond
    jmp     l_f2_exit              
    jmp     l_f2_33                 #  54:     goto   33
l_f2_35_if_false:
l_f2_33:

l_f2_exit:
    # epilogue
    addl    $1572, %esp             # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 2 of <array 2 of <array 6 of <array 2 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    jmp     l_test_2                #   1:     goto   2
l_test_2:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   4:     goto   4
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   7:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
l_test_9_while_cond:
    jmp     l_test_10_while_body    #  10:     goto   10_while_body
    jmp     l_test_10_while_body    #  11:     goto   10_while_body
    jmp     l_test_10_while_body    #  12:     goto   10_while_body
    jmp     l_test_8                #  13:     goto   8
l_test_10_while_body:
    movl    $98, %eax               #  15:     if     98 >= 99 goto 16
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_16              
    jmp     l_test_17               #  16:     goto   17
l_test_16:
    movl    $1, %eax                #  18:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_18               #  19:     goto   18
l_test_17:
    movl    $0, %eax                #  21:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_18:
    movzbl  -14(%ebp), %eax         #  23:     assign v0 <- t1
    movb    %al, v0                
    call    dummyCHARfunc           #  24:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_9_while_cond     #  25:     goto   9_while_cond
l_test_8:
l_test_22_while_cond:
    leal    v1, %eax                #  28:     &()    t3 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  30:     call   t4 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  31:     if     t4 = 1 goto 23_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_23_while_body   
    jmp     l_test_21               #  32:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  34:     goto   22_while_cond
l_test_21:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 8 of <array 2 of <array 2 of <array 6 of <array 2 of <int>>>>>>
    .long    5
    .long    8
    .long    2
    .long    2
    .long    6
    .long    2
    .skip 1536








    # end of global data section
    #-----------------------------------------

    .end
##################################################
