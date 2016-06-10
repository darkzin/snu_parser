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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    movl    $98, %eax               #   0:     if     98 # 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    ReadInt                 #   3:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_10_if_false        #   8:     goto   10_if_false
    jmp     l_f0_8                  #   9:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  15:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  16:     if     t2 < 98 goto 12_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  17:     goto   13_if_false
l_f0_12_if_true:
l_f0_16_while_cond:
    jmp     l_f0_16_while_cond      #  20:     goto   16_while_cond
l_f0_19_while_cond:
    movl    $97, %eax               #  22:     if     97 > 100 goto 20_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_20_while_body     
    jmp     l_f0_18                 #  23:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  25:     goto   19_while_cond
l_f0_18:
    jmp     l_f0_11                 #  27:     goto   11
l_f0_13_if_false:
l_f0_11:
    movl    $19422, %eax            #  30:     sub    t3 <- 19422, 74320
    movl    $74320, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     add    t4 <- t3, 39562
    movl    $39562, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     return t4
    jmp     l_f0_exit              

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 2 of <array 5 of <array 8 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $11635, %eax            #   0:     assign v2 <- 11635
    movl    %eax, 16(%ebp)         
    movl    $99, %eax               #   1:     if     99 < 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_5                 
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_5:
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $100, %eax              #   8:     assign v1 <- 100
    movb    %al, 12(%ebp)          

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <ptr(4) to <array 9 of <array 2 of <array 5 of <array 8 of <array 7 of <char>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 2 of <array 6 of <array 1 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -92(%ebp)   4  [ $v2       <int> %ebp-92 ]
    #   -5156(%ebp)  5064  [ $v3       <array 9 of <array 2 of <array 5 of <array 8 of <array 7 of <char>>>>>> %ebp-5156 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5144, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1286, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-5156(%ebp)          # local array 'v3': 5 dimensions
    movl    $9,-5152(%ebp)          #   dimension 1: 9 elements
    movl    $2,-5148(%ebp)          #   dimension 2: 2 elements
    movl    $5,-5144(%ebp)          #   dimension 3: 5 elements
    movl    $8,-5140(%ebp)          #   dimension 4: 8 elements
    movl    $7,-5136(%ebp)          #   dimension 5: 7 elements

    # function body
    movl    $54683, %eax            #   0:     add    t1 <- 54683, 27190
    movl    $27190, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t1
    movl    %eax, -92(%ebp)        
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   4:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   5:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $71754, %eax            #   6:     mul    t3 <- 71754, t2
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   7:     add    t4 <- t3, 48880
    movl    $48880, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  11:     mul    t6 <- t4, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  12:     add    t7 <- t6, 3476
    movl    $3476, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  16:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  17:     add    t10 <- t9, 67882
    movl    $67882, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  21:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     add    t13 <- t12, 14314
    movl    $14314, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     mul    t14 <- t13, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  25:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  26:     add    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  27:     add    t17 <- v0, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $23312, %eax            #  28:     assign @t17 <- 23312
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_4                  #  29:     goto   4
l_f2_4:
    jmp     l_f2_1                  #  31:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $73503, %eax            #  34:     param  2 <- 73503
    pushl   %eax                   
    movl    $100, %eax              #  35:     param  1 <- 100
    pushl   %eax                   
    leal    -5156(%ebp), %eax       #  36:     &()    t18 <- v3
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  37:     param  0 <- t18
    pushl   %eax                   
    call    f1                      #  38:     call   t19 <- f1
    addl    $12, %esp              
    movl    %eax, -56(%ebp)        

l_f2_exit:
    # epilogue
    addl    $5144, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
    jmp     l_test_exit            
    call    dummyCHARfunc           #   6:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     assign v0 <- t0
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
