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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 56 of <array 67 of <array 47 of <array 24 of <array 72 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 79 of <array 67 of <array 76 of <array 52 of <array 46 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    movl    $98, %eax               #   0:     if     98 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_4                  #   3:     goto   4
l_f0_4:
    movl    $63108, %eax            #   5:     assign v4 <- 63108
    movl    %eax, 20(%ebp)         
l_f0_9_while_cond:
    call    dummyCHARfunc           #   7:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   8:     if     98 <= t4 goto 10_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_10_while_body     
    jmp     l_f0_8                  #   9:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  11:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_0                  #  13:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  16:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  17:     return t5
    jmp     l_f0_exit              
    jmp     l_f0_15_if_false        #  18:     goto   15_if_false
    jmp     l_f0_15_if_false        #  19:     goto   15_if_false
    jmp     l_f0_15_if_false        #  20:     goto   15_if_false
    jmp     l_f0_15_if_false        #  21:     goto   15_if_false
    jmp     l_f0_13                 #  22:     goto   13
l_f0_15_if_false:
l_f0_13:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 56 of <array 67 of <array 47 of <array 24 of <array 72 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 79 of <array 67 of <array 76 of <array 52 of <array 46 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 95 of <array 62 of <array 80 of <array 20 of <array 91 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 89 of <array 91 of <array 57 of <array 66 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -304722492(%ebp)  304722456  [ $v5       <array 56 of <array 67 of <array 47 of <array 24 of <array 72 of <bool>>>>>> %ebp-304722492 ]
    #   141344556(%ebp)  -446067048  [ $v6       <array 79 of <array 67 of <array 76 of <array 52 of <array 46 of <int>>>>>> %ebp+141344556 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-141344568, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-35336142, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-304722492(%ebp)     # local array 'v5': 5 dimensions
    movl    $56,-304722488(%ebp)    #   dimension 1: 56 elements
    movl    $67,-304722484(%ebp)    #   dimension 2: 67 elements
    movl    $47,-304722480(%ebp)    #   dimension 3: 47 elements
    movl    $24,-304722476(%ebp)    #   dimension 4: 24 elements
    movl    $72,-304722472(%ebp)    #   dimension 5: 72 elements
    movl    $5,141344556(%ebp)      # local array 'v6': 5 dimensions
    movl    $79,141344560(%ebp)     #   dimension 1: 79 elements
    movl    $67,141344564(%ebp)     #   dimension 2: 67 elements
    movl    $76,141344568(%ebp)     #   dimension 3: 76 elements
    movl    $52,141344572(%ebp)     #   dimension 4: 52 elements
    movl    $46,141344576(%ebp)     #   dimension 5: 46 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
l_f1_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t5 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #   3:     if     t5 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    movl    $84005, %eax            #   8:     param  3 <- 84005
    pushl   %eax                   
    leal    141344556(%ebp), %eax   #   9:     &()    t6 <- v6
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  2 <- t6
    pushl   %eax                   
    movl    $80410, %eax            #  11:     mul    t7 <- 80410, 93598
    movl    $93598, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     mul    t8 <- t7, 92883
    movl    $92883, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     mul    t9 <- t8, 13416
    movl    $13416, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     param  1 <- t9
    pushl   %eax                   
    leal    -304722492(%ebp), %eax  #  15:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  17:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  18:     return t11
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $-141344568, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    jmp     l_f2_0                  #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_5                  #   5:     goto   5
    jmp     l_f2_6                  #   6:     goto   6
l_f2_5:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_7                  #   9:     goto   7
l_f2_6:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_7:
    movzbl  -14(%ebp), %eax         #  13:     assign v3 <- t5
    movb    %al, 16(%ebp)          
    call    dummyINTfunc            #  14:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]

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
l_test_1_while_cond:
    movl    $51036, %eax            #   1:     div    t0 <- 51036, 88940
    movl    $88940, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t0 = t1 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   8:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   9:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $1, %eax                #  11:     if     1 # 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_7_if_true       
    jmp     l_test_8_if_false       #  12:     goto   8_if_false
l_test_7_if_true:
    call    WriteLn                 #  14:     call   WriteLn
l_test_12_while_cond:
    movl    $22816, %eax            #  16:     if     22816 < 70101 goto 13_while_body
    movl    $70101, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_13_while_body   
    jmp     l_test_11               #  17:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  19:     goto   12_while_cond
l_test_11:
    jmp     l_test_6                #  21:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  25:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  26:     assign v0 <- t3
    movb    %al, v0                

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
