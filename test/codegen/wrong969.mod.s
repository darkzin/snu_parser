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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 10 of <array 9 of <array 6 of <array 1 of <char>>>>>>> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $99213, %eax            #   0:     assign v1 <- 99213
    movl    %eax, -20(%ebp)        
l_f0_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   3:     if     97 <= t4 goto 3_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
    call    dummyCHARfunc           #   8:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     if     t5 # 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_6                 
    jmp     l_f0_7                  #  10:     goto   7
l_f0_6:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8                  #  13:     goto   8
l_f0_7:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f0_8:
    movzbl  -15(%ebp), %eax         #  17:     return t6
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 4 of <array 10 of <array 9 of <array 6 of <array 1 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <char> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -2208(%ebp)  2184  [ $v2       <array 4 of <array 10 of <array 9 of <array 6 of <array 1 of <char>>>>>> %ebp-2208 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2196, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $549, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2208(%ebp)          # local array 'v2': 5 dimensions
    movl    $4,-2204(%ebp)          #   dimension 1: 4 elements
    movl    $10,-2200(%ebp)         #   dimension 2: 10 elements
    movl    $9,-2196(%ebp)          #   dimension 3: 9 elements
    movl    $6,-2192(%ebp)          #   dimension 4: 6 elements
    movl    $1,-2188(%ebp)          #   dimension 5: 1 elements

    # function body
    movl    $97, %eax               #   0:     if     97 = 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   8:     assign v0 <- t4
    movb    %al, 8(%ebp)           
l_f1_6_while_cond:
    movl    $609, %eax              #  10:     if     609 > 81720 goto 7_while_body
    movl    $81720, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #  11:     goto   5
l_f1_7_while_body:
    call    dummyBOOLfunc           #  13:     call   t5 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $46138, %eax            #  14:     if     46138 >= 79329 goto 11_if_true
    movl    $79329, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  15:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  17:     goto   10
l_f1_12_if_false:
l_f1_10:
    jmp     l_f1_16_if_false        #  20:     goto   16_if_false
    jmp     l_f1_14                 #  21:     goto   14
l_f1_16_if_false:
l_f1_14:
l_f1_18_while_cond:
    movl    $97, %eax               #  25:     if     97 <= 98 goto 19_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_19_while_body     
    jmp     l_f1_17                 #  26:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  28:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_6_while_cond       #  30:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_23_if_false        #  32:     goto   23_if_false
    movl    $99, %eax               #  33:     if     99 > 98 goto 25
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_25                
    jmp     l_f1_26                 #  34:     goto   26
l_f1_25:
    movl    $1, %eax                #  36:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_27                 #  37:     goto   27
l_f1_26:
    movl    $0, %eax                #  39:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f1_27:
    movzbl  -16(%ebp), %eax         #  41:     assign v0 <- t6
    movb    %al, 8(%ebp)           
    leal    -2208(%ebp), %eax       #  42:     &()    t7 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  43:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  44:     call   t8 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #  45:     call   t9 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
l_f1_32_while_cond:
    jmp     l_f1_32_while_cond      #  47:     goto   32_while_cond
    movl    $0, %eax                #  48:     assign v0 <- 0
    movb    %al, 8(%ebp)           
l_f1_36_while_cond:
    jmp     l_f1_36_while_cond      #  50:     goto   36_while_cond
    movl    $47301, %eax            #  51:     if     47301 >= 78793 goto 39
    movl    $78793, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_39                
    jmp     l_f1_40                 #  52:     goto   40
l_f1_39:
    movl    $1, %eax                #  54:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_41                 #  55:     goto   41
l_f1_40:
    movl    $0, %eax                #  57:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_41:
    movzbl  -13(%ebp), %eax         #  59:     assign v0 <- t10
    movb    %al, 8(%ebp)           
    jmp     l_f1_43                 #  60:     goto   43
l_f1_43:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_21                 #  64:     goto   21
l_f1_23_if_false:
l_f1_21:

l_f1_exit:
    # epilogue
    addl    $2196, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 5 of <array 10 of <array 2 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $100, %eax              #   1:     if     100 < 97 goto 4_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   2:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5_if_false:
l_f2_3:
    movl    $1, %eax                #   7:     assign v2 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    ReadInt                 #  12:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_16                 #  13:     goto   16
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_17                 #  15:     goto   17
l_f2_16:
    movl    $0, %eax                #  17:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f2_17:
    movl    $1, %eax                #  19:     if     1 = t5 goto 11
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_11                
    jmp     l_f2_12                 #  20:     goto   12
l_f2_11:
    movl    $1, %eax                #  22:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_13                 #  23:     goto   13
l_f2_12:
    movl    $0, %eax                #  25:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f2_13:
    movzbl  -18(%ebp), %eax         #  27:     assign v2 <- t6
    movb    %al, -19(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 4 of <array 10 of <array 9 of <array 6 of <array 1 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]

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
    leal    v1, %eax                #   1:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    f0                      #   3:     call   t1 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t1 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2               
    jmp     l_test_2                #   5:     goto   2
l_test_2:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_4                #   8:     goto   4
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_4:
    movzbl  -18(%ebp), %eax         #  11:     assign v0 <- t2
    movb    %al, v0                
    call    dummyBOOLfunc           #  12:     call   t3 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 4 of <array 10 of <array 9 of <array 6 of <array 1 of <char>>>>>>
    .long    5
    .long    4
    .long   10
    .long    9
    .long    6
    .long    1
    .skip 2160








    # end of global data section
    #-----------------------------------------

    .end
##################################################
