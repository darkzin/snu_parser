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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 100 of <array 87 of <array 91 of <array 44 of <array 19 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 43 of <array 13 of <array 100 of <array 18 of <array 46 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 65 of <array 69 of <array 62 of <array 8 of <array 77 of <bool>>>>>>> %ebp+20 ]

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
    movl    $98, %eax               #   1:     if     98 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   5:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97777, %eax            #   6:     if     97777 < 54749 goto 7_if_true
    movl    $54749, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_exit              
l_f0_12_while_cond:
    call    dummyCHARfunc           #  16:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  17:     if     100 = t3 goto 13_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_13_while_body     
    jmp     l_f0_11                 #  18:     goto   11
l_f0_13_while_body:
    jmp     l_f0_exit              
l_f0_17_while_cond:
    jmp     l_f0_16                 #  22:     goto   16
    jmp     l_f0_17_while_cond      #  23:     goto   17_while_cond
l_f0_16:
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_12_while_cond      #  28:     goto   12_while_cond
l_f0_11:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 65 of <array 69 of <array 62 of <array 8 of <array 77 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 43 of <array 13 of <array 100 of <array 18 of <array 46 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 100 of <array 87 of <array 91 of <array 44 of <array 19 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #   -661861256(%ebp)  661861224  [ $v3       <array 100 of <array 87 of <array 91 of <array 44 of <array 19 of <char>>>>>> %ebp-661861256 ]
    #   -847002080(%ebp)  185140824  [ $v4       <array 43 of <array 13 of <array 100 of <array 18 of <array 46 of <int>>>>>> %ebp-847002080 ]
    #   -1018293224(%ebp)  171291144  [ $v5       <array 65 of <array 69 of <array 62 of <array 8 of <array 77 of <bool>>>>>> %ebp-1018293224 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1018293212, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $254573303, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-661861256(%ebp)     # local array 'v3': 5 dimensions
    movl    $100,-661861252(%ebp)   #   dimension 1: 100 elements
    movl    $87,-661861248(%ebp)    #   dimension 2: 87 elements
    movl    $91,-661861244(%ebp)    #   dimension 3: 91 elements
    movl    $44,-661861240(%ebp)    #   dimension 4: 44 elements
    movl    $19,-661861236(%ebp)    #   dimension 5: 19 elements
    movl    $5,-847002080(%ebp)     # local array 'v4': 5 dimensions
    movl    $43,-847002076(%ebp)    #   dimension 1: 43 elements
    movl    $13,-847002072(%ebp)    #   dimension 2: 13 elements
    movl    $100,-847002068(%ebp)   #   dimension 3: 100 elements
    movl    $18,-847002064(%ebp)    #   dimension 4: 18 elements
    movl    $46,-847002060(%ebp)    #   dimension 5: 46 elements
    movl    $5,-1018293224(%ebp)    # local array 'v5': 5 dimensions
    movl    $65,-1018293220(%ebp)   #   dimension 1: 65 elements
    movl    $69,-1018293216(%ebp)   #   dimension 2: 69 elements
    movl    $62,-1018293212(%ebp)   #   dimension 3: 62 elements
    movl    $8,-1018293208(%ebp)    #   dimension 4: 8 elements
    movl    $77,-1018293204(%ebp)   #   dimension 5: 77 elements

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    leal    -1018293224(%ebp), %eax #   1:     &()    t3 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  3 <- t3
    pushl   %eax                   
    leal    -847002080(%ebp), %eax  #   3:     &()    t4 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  2 <- t4
    pushl   %eax                   
    leal    -661861256(%ebp), %eax  #   5:     &()    t5 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     param  1 <- t5
    pushl   %eax                   
    movl    $29478, %eax            #   7:     param  0 <- 29478
    pushl   %eax                   
    call    f0                      #   8:     call   f0
    addl    $16, %esp              
    jmp     l_f1_3                  #   9:     goto   3
    jmp     l_f1_4                  #  10:     goto   4
l_f1_3:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_5                  #  13:     goto   5
l_f1_4:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -29(%ebp)         
l_f1_5:
    movzbl  -29(%ebp), %eax         #  17:     return t6
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $1018293212, %esp       # remove locals
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
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t3       <bool> %ebp-73 ]
    #    -74(%ebp)   1  [ $t4       <bool> %ebp-74 ]
    #    -75(%ebp)   1  [ $t5       <bool> %ebp-75 ]
    #    -76(%ebp)   1  [ $t6       <char> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 87 of <array 14 of <array 31 of <array 4 of <array 80 of <int>>>>>>> %ebp+8 ]
    #    -92(%ebp)   4  [ $v1       <int> %ebp-92 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     param  2 <- 100
    pushl   %eax                   
    movl    $77970, %eax            #   1:     mul    t2 <- 77970, 51994
    movl    $51994, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   2:     if     t2 > 40279 goto 1
    movl    $40279, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -73(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -73(%ebp)         
l_f2_3:
    movzbl  -73(%ebp), %eax         #  10:     param  1 <- t3
    pushl   %eax                   
    jmp     l_f2_6                  #  11:     goto   6
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -74(%ebp)         
    jmp     l_f2_7                  #  13:     goto   7
l_f2_6:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -74(%ebp)         
l_f2_7:
    movzbl  -74(%ebp), %eax         #  17:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  18:     call   t5 <- f1
    addl    $12, %esp              
    movb    %al, -75(%ebp)         
    call    dummyCHARfunc           #  19:     call   t6 <- dummyCHARfunc
    movb    %al, -76(%ebp)         
    movzbl  -76(%ebp), %eax         #  20:     if     t6 < 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  21:     goto   11_if_false
l_f2_10_if_true:
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $8729, %eax             #  26:     mul    t8 <- 8729, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  27:     add    t9 <- t8, 37757
    movl    $37757, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  30:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  31:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  32:     add    t12 <- t11, 27418
    movl    $27418, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  33:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  35:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  36:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  37:     add    t15 <- t14, 7849
    movl    $7849, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  38:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  40:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  41:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  42:     add    t18 <- t17, 61542
    movl    $61542, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  43:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  45:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  46:     add    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  47:     add    t22 <- v0, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $97366, %eax            #  48:     assign @t22 <- 97366
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $97, %eax               #  49:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  50:     goto   9
l_f2_11_if_false:
l_f2_9:
    call    ReadInt                 #  53:     call   t23 <- ReadInt
    movl    %eax, -72(%ebp)        

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $11241, %eax            #   1:     if     11241 > 74462 goto 2_if_true
    movl    $74462, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $39904, %eax            #   4:     if     39904 <= 56500 goto 6
    movl    $56500, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6               
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $1, %eax                #   7:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $0, %eax                #  10:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_8:
    movzbl  -14(%ebp), %eax         #  12:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_1                #  13:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
